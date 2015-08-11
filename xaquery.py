# -*- coding: utf-8 -*-
from pandas import DataFrame
import win32com.client
import pythoncom
import time
from logger import Logger
log = Logger("xaquery")
'''
Query("t8407").request({
	"in" : {
		"InBlock" : {
			"nrec" : len(codes),
			"shcode" : "".join(codes)
		}
	},
	"out" :{
		"OutBlock1" : DataFrame(columns=("shcode","hname","price","open","high","low","sign","change","diff","volume"))
	}
});
Query("t1101", False).request({
	"in" : {
		"InBlock" : {
			"shcode" : shcode
		}
	},
	"out" : {
		"OutBlock" : ("hname","price", "sign", "change", "diff", "volume", "jnilclose",
			"offerho1", "bidho1", "offerrem1", "bidrem1", "preoffercha1","prebidcha1",
			"offerho2", "bidho2", "offerrem2", "bidrem2", "preoffercha2","prebidcha2",
			"offerho3", "bidho3", "offerrem3", "bidrem3", "preoffercha3","prebidcha3",
			"offerho4", "bidho4", "offerrem4", "bidrem4", "preoffercha4","prebidcha4",
			"offerho5", "bidho5", "offerrem5", "bidrem5", "preoffercha5","prebidcha5",
			"offerho6", "bidho6", "offerrem6", "bidrem6", "preoffercha6","prebidcha6",
			"offerho7", "bidho7", "offerrem7", "bidrem7", "preoffercha7","prebidcha7",
			"offerho8", "bidho8", "offerrem8", "bidrem8", "preoffercha8","prebidcha8",
			"offerho9", "bidho9", "offerrem9", "bidrem9", "preoffercha9","prebidcha9",
			"offerho10", "bidho10", "offerrem10", "bidrem10", "preoffercha10","prebidcha10",
			"offer", "bid", "preoffercha", "prebidcha", "uplmtprice", "dnlmtprice", "open", "high", "low", "ho_status", "hotime"
		)
	}
})
'''
class XAQueryEvents:
	status = 0
	code = None
	msg = None
	count = 0
	def OnReceiveData(self, szTrCode):
		log.debug("onReceiveData (%s%s)" % (szTrCode, self._parseCode(szTrCode)) )
		XAQueryEvents.status = 1
	def OnReceiveMessage(self, systemError, messageCode, message):
		XAQueryEvents.code = str(messageCode)
		XAQueryEvents.msg = str(message)
		log.debug("OnReceiveMessage (%s %s)" % (XAQueryEvents.code, XAQueryEvents.msg))
	def _parseCode(self, szTrCode):
		str = " : "
		if szTrCode == "t8407":
			str += "멀티현재가조회"
		elif szTrCode == "t8412":
			str += "주식챠트(N분)"
		elif szTrCode == "t1833":
			str += "종목검색(씽API용)"
		return str

class Query:
	MAX_REQUEST = 5
	requestTime = time.time()
	def sleep():
		spendTime = time.time() - Query.requestTime
		if spendTime < 1:
			log.debug("==== SLEEP...%f ====" % (1-spendTime))
			time.sleep(1-spendTime + 0.1)

	# callNext가 false일 경우, 한번만 조회, true일 경우, 다음이 있으면 계속 조회
	def __init__(self, type, callNext = True):
		self.query = win32com.client.DispatchWithEvents("XA_DataSet.XAQuery", XAQueryEvents)
		self.query.LoadFromResFile("Res/" + type + ".res")
		self.type = type;
		self.callNext = callNext;

	# 파라미터 보충작업
	def _supplimentParam(self, param):
		if not "in" in param:
			param["in"] = {
				"InBlock" : {}
			}
		elif not "InBlock" in param["in"]:
			param["in"]["InBlock"] = {}
		return param

	def _reset(self):
		XAQueryEvents.count = 0
		XAQueryEvents.status = 0
		XAQueryEvents.code = None
		XAQueryEvents.msg = None

	def _parse(self, param):
		self._reset()
		param = self._supplimentParam(param)
		# parse inputBlock
		log.debug("--- Query 입력\r\n%s" % param["in"])
		for v in param["in"].keys():
			if v != "Service":
				self.inputName = v
		self.input = param["in"][self.inputName]
		self.compress = "comp_yn" in self.input.keys() and self.input["comp_yn"] == "Y"
		if "Service" in param["in"]:
			self.service = param["in"]["Service"]

		#parse outputBlock
		self.output = {}
		for v in param["out"].keys():
			if isinstance(param["out"][v], DataFrame):
				#occur
				self.output[v] = param["out"][v]
			else:
				self.output[v] = {}
				for p in param["out"][v]:
					self.output[v][p] = None
		# print("** %s **\ninput : %s\noutput : %s" % (self.type, self.input, self.output))

	def request(self, param, isNext = False):
		if not isNext:
			self._parse(param)
			Query.sleep()

		#input setting
		for p in self.input.keys():
			# pass
			self.query.SetFieldData(self.type + self.inputName, p, 0, self.input[p])

		# 연속조회인 경우에만 연속조회 실패를 방지하기 위하여 초당 전송수가 임시로 확장됩니다 (5개로 추정됨)
		if XAQueryEvents.count < Query.MAX_REQUEST:
			XAQueryEvents.count += 1
		else:
			XAQueryEvents.count = 1
			Query.sleep()

		#call request
		Query.requestTime = time.time()
		if hasattr(self, "service"):
			log.debug("Call requestService (%s)" %XAQueryEvents.status)
			requestCode = self.query.RequestService(self.type, self.service)
		else:
			log.debug("Call request (%s)-%s" % (XAQueryEvents.status, isNext))
			requestCode = self.query.Request(isNext)
		if requestCode < 0:
			if requestCode == -21:
				log.critical("TR의 시간당 전송제한에 걸렸습니다 (%s)" %requestCode)
			else:
				log.critical("Request FAILED (%s)" % requestCode)
			return

		while XAQueryEvents.status == 0:
			pythoncom.PumpWaitingMessages()

		#output setting
		for v in self.output.keys():
			if isinstance(self.output[v], DataFrame):
				#occur
				df = self.output[v]
				if self.compress:
					self.query.Decompress(self.type + v)
				startIndex = len(df)
				for p in range(0,self.query.GetBlockCount(self.type + v)):
					for col in list(df.columns.values):
						df.set_value(p + startIndex, col, self.query.GetFieldData(self.type + v, col, p))
			else:
				for col in self.output[v].keys():
					self.output[v][col] = self.query.GetFieldData(self.type + v, col, 0)
					if self.query.IsNext:
						self.input[col] = self.output[v][col]
		XAQueryEvents.status = 0
		if self.query.IsNext:
			if self.callNext:
				return self.request(param, True)
			else:
				log.debug("--- Query [callNext=False] 결과\r\n%s" % self.output)
				return self.output
		else:
			log.debug("--- Query [callNext=True] 결과\r\n%s" % self.output)
			return self.output