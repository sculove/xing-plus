# -*- coding: utf-8 -*-
from pandas import DataFrame,Series, read_sql
from config import Config
import sqlite3
import os
from logger import Logger
import numpy as np
log = Logger("sql")

class SqlManager:
	"""
	for sqlite3
	https://gist.github.com/catawbasam/3164289
	"""
	def get_schema(table, df):
		types = {'DATE':'TIMESTAMP', 'DATETIME':'TIMESTAMP', 'INT':'NUMBER',  'FLOAT':'FLOAT', 'VARCHAR':'VARCHAR2'};
		column_types = []
		dtypes = df.dtypes
		for i,k in enumerate(dtypes.index):
		    dt = dtypes[k]
		    #print 'dtype', dt, dt.itemsize
		    if str(dt.type)=="<type 'numpy.datetime64'>":
		        sqltype = types['DATETIME']
		    elif issubclass(dt.type, np.datetime64):
		        sqltype = types['DATETIME']
		    elif issubclass(dt.type, (np.integer, np.bool_)):
		        sqltype = types['INT']
		    elif issubclass(dt.type, np.floating):
		        sqltype = types['FLOAT']
		    else:
		        sampl = df[ df.columns[i] ][0]
		        #print 'other', type(sampl)
		        if str(type(sampl))=="<type 'datetime.datetime'>":
		            sqltype = types['DATETIME']
		        elif str(type(sampl))=="<type 'datetime.date'>":
		            sqltype = types['DATE']
		        else:
		           sqltype = types['VARCHAR']
		    colname =  k.replace(' ','_').strip()  #k.upper().replace(' ','_')
		    column_types.append((colname, sqltype))
		columns = ',\n  '.join('%s %s' % x for x in column_types)
		template_create = """CREATE TABLE %(table)s (
	%(columns)s
);"""
		#print 'COLUMNS:\n', columns
		create = template_create % {'table' : table, 'columns' : columns}
		return create

	def table_exists(table):
		df = SqlManager.read("sqlite_master", "where type='table' and name='%s'" % table)
		return True if len(df) > 0 else False

	def write(table,df):
		if len(df) ==0:
			return
		sqlite3.connect(Config.DB["name"])
		columns = tuple(df.columns.values)
		sql = "insert or replace into %s(%s) values(%s)" % ( table,   ",".join(columns),  ",".join(["?"] * len(columns)))
		data = [tuple(x) for x in df.values]
		try:
			con = sqlite3.connect(Config.DB["name"])
			cursor = con.cursor()
			if not SqlManager.table_exists(table):
				cursor.execute(SqlManager.get_schema(table, df))
			log.debug("insert sql : %s\r\n%s", sql, data)
			cursor.executemany(sql, data)
			log.debug("insert count : %s", cursor.rowcount)
			con.commit()
		# Catch the exception
		except Exception as e:
			# Roll back any change if something goes wrong
			con.rollback()
			raise e
		finally:
			# Close the db connection
			con.close()

	def read(table, where = ""):
		sql = "select * from %s %s" % ( table, where )
		try:
			con = sqlite3.connect(Config.DB["name"])
			log.debug("select sql : %s\r\n", sql)
			result = read_sql(sql, con)
		# Catch the exception
		except Exception as e:
			raise e
		finally:
			# Close the db connection
			con.close()
			return result
