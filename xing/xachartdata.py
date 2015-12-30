# -*- coding: utf-8 -*-
from datetime import datetime, timedelta

from pandas import DataFrame, Series
from talib import abstract

from xing import util
from xing.xaquery import Query

# https://cryptotrader.org/talib
# https://github.com/mrjbq7/ta-lib
'''
chart = Chartdata("012510").load({
		Chartdata.DAY : [ startdate , enddate ]
		Chartdata.WEEK : [ startdate , enddate ]
		Chartdata.MONTH : [ startdate , enddate ]
		1 : [ startdate , enddate ]
	})
print(chart.process({
	"SMA" : [ 5, 10, 20, 60],
	"BBANDS" : [20, 2],	#period, 승수
	# "ATR" : 14,	#period
	# "STOCH" : [ 5, 3, 0],	#K period, D period, D type
	# "MACD" : [12, 26, 9],  # short, long, signal
	# "RSI" : 14,  # period
}))
'''
class Chartdata:
	DAY = 99997
	WEEK = 99998
	MONTH = 99999
	def __init__(self, shcode):
		self._shcode = shcode
		self._data = {}

	def clean(self, type = None):
		if type and type in self._data:
			self._data[type] = None
		else:
			self._data = {}


	def load(self, param):
		p = self._parseParam(param)
		for k,v in p.items():
			if k in self._data:
				lastrow = self._data[k].iloc[len(self._data[k])-1]
				df = self._query(shcode, k, lastrow["date"], p[k][1])
				# @todo 합치기 ()
				# 기존 date 정보를 다 지우고 새로 받은 df와 합치기

			else:
				self._data[k] = self._query(shcode, k, p[k][0], p[k][1])
		pass

	"""
        Chartdata.DAY : [ "20100101", "20101231"],
        Chartdata.MONTH : ("20100101", "20101231"),
        Chartdata.WEEK : [ "20100101" ],
        5 : ["2010"],
        12 : ("2010",),
        15 : "2010",
        30 : ""
    """
	def _parseParam(param):
		result = {}
	    for k,v in param.items():
	        if isinstance(v, (list, tuple)):
	            if len(v) < 2:
	                result[k] = [v[0], "99999999"]
	            else:
	                result[k] = v[:2]
	        else:
	            result[k] = [v, "99999999"]
	    return result


	def _query(self, type, startdate = "", enddate = "99999999"):
		chartType = self._getChartType(type):
		if chartType == 0:	# 분
			df = (Query("t8412", True).request({
					"InBlock" : {
						"shcode" : self._shcode,
						"qrycnt" : 2000,
						"comp_yn" : "Y",
						"sdate" : startdate,
						"edate" : enddate,
						"ncnt" : type
					}
				},{
					"OutBlock" : ("cts_date", "cts_time"),
					"OutBlock1" : DataFrame(columns=("date", "time", "open", "high", "low", "close", "jdiff_vol","sign"))
			}))["OutBlock1"]
		else:
			df = (Query("t8413", True).request({
					"InBlock" : {
						"shcode" : self._shcode,
						"gubun" : chartType,
						"qrycnt" : 2000,
						"sdate" : startdate,
						"edate" : enddate,
						"comp_yn" : "Y"
					}
				},{
					"OutBlock" : ("cts_date",),
					"OutBlock1" : DataFrame(columns=("date", "open", "high", "low", "close", "jdiff_vol","sign"))
			}))["OutBlock1"]
		return df


	# 2: 일, 3: 주, 4: 월
	def _getChartType(self, type):
		chartType = 0
		if type >= Chartdata.DAY:
			if chartType == Chartdata.DAY:
				chartType = 2
			elif chartType == Chartdata.WEEK:
				chartType = 3
			elif chartType == Chartdata.MONTH:
				chartType = 4
		return chartType




	# def _refillDate(self, dday=2):
	# 	baseday = datetime.today()
	# 	# 장 전에는 전날과, 전전전날로 범위를 정함.
	# 	if util.timeType() == "BEFORE":
	# 		baseday = baseday - timedelta(days=1)
	# 	# 평일 찾기
	# 	while baseday.weekday() > 4:
	# 		baseday = baseday - timedelta(days=1)
	# 	if baseday.weekday() < 2:	# 월,화요일인 경우.
	# 		prevday = baseday - timedelta(days=dday+2)
	# 	else:
	# 		prevday = baseday - timedelta(days=dday)
	# 	return (prevday.strftime("%Y%m%d"), baseday.strftime("%Y%m%d"))

	# def load(self, shcode, gubun = 5, date = None):
 #        # 일, 주, 월 조회
	# 	if gubun >= Chartdata.DAY:
	# 		#2:일, 3:주, 4:월
	# 		date = date if date else self._refillDate(120)
	# 		if gubun == Chartdata.DAY:
	# 			gubun = 2
	# 		elif gubun == Chartdata.WEEK:
	# 			gubun = 3
	# 		elif gubun == Chartdata.MONTH:
	# 			gubun = 4
	# 		self.df = (Query("t8413").request({
	# 				"InBlock" : {
	# 					"shcode" : shcode,
	# 					"gubun" : gubun,
	# 					"qrycnt" : 2000,
	# 					"sdate" : date[0],
	# 					"edate" : date[1],
	# 					"comp_yn" : "Y"
	# 				}
	# 			},{
	# 				"OutBlock" : ("cts_date",),
	# 				"OutBlock1" : DataFrame(columns=("date", "open", "high", "low", "close", "jdiff_vol","sign"))
	# 		}))["OutBlock1"]
	# 	else:
 #            # 분조회
	# 		date = date if date else self._refillDate()
	# 		self.df = (Query("t8412").request({
	# 				"InBlock" : {
	# 					"shcode" : shcode,
	# 					"qrycnt" : 2000,
	# 					"comp_yn" : "Y",
	# 					"sdate" : date[0],
	# 					"edate" : date[1],
	# 					"ncnt" : gubun
	# 				}
	# 			},{
	# 				"OutBlock" : ("cts_date", "cts_time"),
	# 				"OutBlock1" : DataFrame(columns=("date", "time", "open", "high", "low", "close", "jdiff_vol","sign"))
	# 		}))["OutBlock1"]

	# 	self.data = {
	# 		"open" : self.df["open"].astype(float),
	# 		"high" : self.df["high"].astype(float),
	# 		"low" : self.df["low"].astype(float),
	# 		"close" : self.df["close"].astype(float),
	# 		"volume" : self.df["jdiff_vol"].astype(float)
	# 	}
	# 	return self

	# 지표 계산
	def process(self, param):
		# 이동평균선
		if "SMA" in param:
			for p in param["SMA"]:
				self.df["SMA" + str(p)] = Series(abstract.SMA(self.data, p), index=self.df.index)

		# Bollinger Bands
		if "BBANDS" in param:
			temp = abstract.BBANDS(self.data, param["BBANDS"][0], param["BBANDS"][1], param["BBANDS"][1])
			self.df["BBANDS-UPPER"] = temp[0]
			self.df["BBANDS-MIDDLE"] = temp[1]
			self.df["BBANDS-LOWER"] = temp[2]

		# Slow stochastic
		if "STOCH" in param:
			temp = abstract.STOCH(self.data, param["STOCH"][0], param["STOCH"][1], param["STOCH"][2])
			self.df["STOCH-K"] = temp[0]
			self.df["STOCH-D"] = temp[1]

		# ATR (Average True Range)
		if "ATR" in param:
			self.df["ATR"] = Series(abstract.ATR(self.data, param["ATR"]), index=self.df.index)

		# MACD (Moving Average Convergence/Divergence)
		if "MACD" in param:
			temp = abstract.MACD(self.data, param["MACD"][0], param["MACD"][1], param["MACD"][2])
			self.df["MACD-OUT"] = temp[0]
			self.df["MACD-SIGNAL"] = temp[1]
			self.df["MACD-HIST"] = temp[2]

		# RSI (Relative Strength Index)
		if "RSI" in param:
			self.df["RSI"] = Series(abstract.RSI(self.data, param["RSI"]), index=self.df.index)
		return self.df

	def get(self):
		return self.df
