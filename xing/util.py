# -*- coding: utf-8 -*-
from datetime import datetime
import math
import pandas

# 장 전,후 시간
def timeType(today = None):
	today = today if today else datetime.today()
	mainStart = today.replace(hour=8, minute=50, second=0, microsecond=0)
	mainEnd = today.replace(hour=15, minute=0, second=0, microsecond=0)

	if today.weekday() < 5:
		if today >= mainStart and today <= mainEnd:
			return "SHOWTIME"
		else:
			if today < mainStart:
				return "BEFORE"
			elif today > mainEnd:
				return "AFTER"
	else:
		return "NONE"

def today():
	return datetime.today().strftime("%Y%m%d")

# def printMax(x):
# 	pandas.set_option("display.max_rows", len(x))
# 	pandas.set_option("display.max_columns", len(x.columns))
# 	print(x)
# 	pandas.reset_option("display.max_rows")
# 	pandas.reset_option("display.max_columns")
#
# def split(arr, size):
# 	arrs = []
# 	while len(arr) > size:
# 		pice = arr[:size]
# 		arrs.append(pice)
# 		arr = arr[size:]
# 	arrs.append(arr)
# 	return arrs

# # 호가 단위
# def callValueUnit(price, isKospi = False):
# 	unit = None
# 	price = int(price)
# 	if price < 1000:
# 		unit = 1
# 	elif price >= 1000 and price < 5000:
# 		unit = 5
# 	elif price >= 5000 and price < 10000:
# 		unit = 10
# 	elif price >= 10000 and price < 50000:
# 		unit = 50
# 	elif price >= 50000:
# 		if isKospi:
# 			if price < 100000:
# 				unit = 100
# 			elif price >= 100000 and price < 500000:
# 				unit = 500
# 			elif price >= 500000:
# 				unit = 1000
# 		else:
# 			unit = 100
# 	return unit
#
# # 구분
# def sign(type):
# 	result = None
# 	type = int(type)
# 	if type < 3:
# 		#상승
# 		result = 1
# 	elif type == 3:
# 		#보합
# 		result = 0
# 	elif type > 3:
# 		#하락
# 		result = -1
# 	return result
#
# # candle
# def candle(price, open, high, low):
# 	# print(price, open, high, low)
# 	p = int(price)
# 	o = int(open)
# 	h = int(high)
# 	l = int(low)
# 	height = h-l
# 	body = 0 if height == 0 else round((p-o)/height,2)
#
# 	if body > 0:
# 		#양봉
# 		type = 1
# 		top = (h-p)/height
# 		bottom = (o-l)/height
# 	elif body < 0:
# 		#음봉
# 		type = -1
# 		top = (h-o)/height
# 		bottom = (p-l)/height
# 	else:
# 		#보합
# 		type = 0.0
# 		top = 0.0
# 		bottom = 0.0
#
# 	return {
# 		"type" : type,
# 		"top" : round(top,2) * 100,
# 		"bottom" : round(bottom,2) * 100,
# 		"body" : math.fabs(body) * 100
# 	}
#
# def profit(buy, sell):
# 	#매매수수료
# 	fee = (float(buy) * 0.00015) + (float(sell) * 0.00315)
# 	profit = sell - buy - fee
#
# 	return {
# 		"profit" : profit,
# 		"rate" : round(profit/buy * 100,2)
# 	}

