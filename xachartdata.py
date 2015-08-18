# -*- coding: utf-8 -*-
from xaquery import Query
from util import Util
from talib.abstract import *
import numpy as np
from datetime import datetime, timedelta
from pandas import DataFrame,Series
from talib import MA_Type
from logger import Logger
log = Logger("xachartdata")
# https://cryptotrader.org/talib
# https://github.com/mrjbq7/ta-lib
'''
chart = Chartdata().load("012510")
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
	DAY = 9997
	WEEK = 9998
	MONTH = 9999
	def __init__(self):
		pass

	def _supplimentDate(self, dday=2):
		baseday = datetime.today()
		# 장 전에는 전날과, 전전전날로 범위를 정함.
		if Util.timeType() == "BEFORE":
			baseday = baseday - timedelta(days=1)
		# 평일 찾기
		while baseday.weekday() > 4:
			baseday = baseday - timedelta(days=1)
		if baseday.weekday() < 2:	# 월,화요일인 경우.
			prevday = baseday - timedelta(days=dday+2)
		else:
			prevday = baseday - timedelta(days=dday)
		return (prevday.strftime("%Y%m%d"), baseday.strftime("%Y%m%d"))

	# 차트 데이터 구하기
	def load(self, shcode, gubun = 5, date = None):
		if gubun >= Chartdata.DAY:
			#2:일, 3:주, 4:월
			date = date if date else self._supplimentDate(120)
			if gubun == Chartdata.DAY:
				gubun = 2
			elif gubun == Chartdata.WEEK:
				gubun = 3
			elif gubun == Chartdata.MONTH:
				gubun = 4
			self.df = (Query("t8413").request({
				"in" : {
					"InBlock" : {
						"shcode" : shcode,
						"gubun" : gubun,
						"qrycnt" : 2000,
						"sdate" : date[0],
						"edate" : date[1],
						"comp_yn" : "Y"
					}
				},
				"out" : {
					"OutBlock" : ("cts_date",),
					"OutBlock1" : DataFrame(columns=("date", "open", "high", "low", "close", "jdiff_vol","sign"))
				}
			}))["OutBlock1"]
		else:
			date = date if date else self._supplimentDate()
			self.df = (Query("t8412").request({
				"in" : {
					"InBlock" : {
						"shcode" : shcode,
						"qrycnt" : 2000,
						"comp_yn" : "Y",
						"sdate" : date[0],
						"edate" : date[1],
						"ncnt" : gubun
					}
				},
				"out" : {
					"OutBlock" : ("cts_date", "cts_time"),
					"OutBlock1" : DataFrame(columns=("date", "time", "open", "high", "low", "close", "jdiff_vol","sign"))
				}
			}))["OutBlock1"]

		self.data = {
			"open" : self.df["open"].astype(float),
			"high" : self.df["high"].astype(float),
			"low" : self.df["low"].astype(float),
			"close" : self.df["close"].astype(float),
			"volume" : self.df["jdiff_vol"].astype(float)
		}
		return self

	# 지표 계산
	def process(self, param):
		# 이동평균선
		if "SMA" in param:
			for p in param["SMA"]:
				self.df["SMA" + str(p)] = Series(SMA(self.data, p), index=self.df.index)

		# Bollinger Bands
		if "BBANDS" in param:
			temp = BBANDS(self.data, param["BBANDS"][0], param["BBANDS"][1], param["BBANDS"][1])
			self.df["BBANDS-UPPER"] = temp[0]
			self.df["BBANDS-MIDDLE"] = temp[1]
			self.df["BBANDS-LOWER"] = temp[2]

		# Slow stochastic
		if "STOCH" in param:
			temp = STOCH(self.data, param["STOCH"][0], param["STOCH"][1], param["STOCH"][2])
			self.df["STOCH-K"] = temp[0]
			self.df["STOCH-D"] = temp[1]

		# ATR (Average True Range)
		if "ATR" in param:
			self.df["ATR"] = Series(ATR(self.data, param["ATR"]), index=self.df.index)

		# MACD (Moving Average Convergence/Divergence)
		if "MACD" in param:
			temp = MACD(self.data, param["MACD"][0], param["MACD"][1], param["MACD"][2])
			self.df["MACD-OUT"] = temp[0]
			self.df["MACD-SIGNAL"] = temp[1]
			self.df["MACD-HIST"] = temp[2]

		# RSI (Relative Strength Index)
		if "RSI" in param:
			self.df["RSI"] = Series(RSI(self.data, param["RSI"]), index=self.df.index)
		return self.df

	def get(self):
		return self.df
