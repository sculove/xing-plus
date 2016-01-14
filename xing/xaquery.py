# -*- coding: utf-8 -*-
import time
import pythoncom
import win32com.client
from pandas import DataFrame
from xing import xacom
from xing.logger import Logger

log = Logger(__name__)
class _XAQueryEvents:
	def __init__(self):
		self.status = 0
		self.code = None
		self.msg = None

	def reset(self):
		self.status = 0
		self.code = None
		self.msg = None

	def OnReceiveData(self, szTrCode):
		log.debug(" - onReceiveData (%s:%s)" % (szTrCode, xacom.parseTR(szTrCode)))
		self.status = 1

	def OnReceiveMessage(self, systemError, messageCode, message):
		self.code = str(messageCode)
		self.msg = str(message)
		log.debug(" - OnReceiveMessage (%s:%s)" % (self.code, self.msg))

class Query:
	"""TR 조회를 위한 XAQuery 확장 클래스

		:param type: TR 번호
		:type type: str
		:param callNext: callNext가 False인 경우, 한번만 조회, True일 경우, 다음(occur)이 있으면 계속 조회 (기본값은 True)
		:type callNext: bool

		::

			Query("t8407")
			Query("t1101", False)
	"""
	_MAX_REQUEST = 5
	_REQUEST_TIME = 0
	_REQUEST_COUNT = 0

	@staticmethod
	def _sleepTime():
		"""요청 시간 초기화

		연속조회 가능한 수보다 초과할 경우, 요청이 가능할때까지 sleep
		"""
		if Query._REQUEST_COUNT < Query._MAX_REQUEST:
			Query._REQUEST_COUNT += 1
		else:
			Query._REQUEST_COUNT = 1
			Query.sleep()
		Query._REQUEST_TIME = time.time()

	@staticmethod
	def sleep():
		"""최소 TR 요청 시간까지 sleep

		직전 TR 호출 경과시간이 1초 미만일 경우, 1초가 경과할때까지 sleep

		.. note:: 일반적으로는 1초에 하나의 TR만 전송 가능함. 연속조회인 경우에만 연속조회 실패를 방지하기 위하여 초당 요청 수가 임시로 5개로 확장된다.

		::

			Query.sleep()
		"""
		spendTime = time.time() - Query._REQUEST_TIME
		if spendTime < 1:
			log.info("===== SLEEP...%f =====" % (1-spendTime))
			time.sleep(1-spendTime + 0.1)

	def __init__(self, type, callNext = True):
		self.query = win32com.client.DispatchWithEvents("XA_DataSet.XAQuery", _XAQueryEvents)
		self.query.LoadFromResFile("res/" + type + ".res")
		self.type = type;
		self.callNext = callNext;

	# parse inputBlock
	def _parseInput(self, param):
		log.info("<<<<< [Query] 입력:%s" % param)
		for v in param.keys():
			if v != "Service":
				self.inputName = v
		self.input = param[self.inputName]
		self.compress = "comp_yn" in self.input.keys() and self.input["comp_yn"] == "Y"
		if "Service" in param:
			self.service = param["Service"]

	#parse outputBlock
	def _parseOutput(self, param):
		self.output = {}
		for k,v in param.items():
			if isinstance(v, DataFrame):
				#occur
				self.output[k] = v
			else:
				self.output[k] = {}
				for p in v:
					self.output[k][p] = None
		# print("** %s **\ninput : %s\noutput : %s" % (self.type, self.input, self.output))

	# TR을 전송한다.
	def request(self, input, output, isNext=False):
		"""TR을 요청한다.

		:param input: TR의 input block 정보
		:type input: object { "InBlock" : { ... } }
		:param output: TR의 output block 정보. output block을 여러개가 존재할 수 있으며, DataFrame타입일 경우, occur 데이터를 반환한다.
		:type output: object { "OutBlock" : DataFrame or tuple, "OutBlock1" : DataFrame or tuple} }
		:param isNext: 연속 조회를 사용하기 위한 내부 파라미터로서 직접 사용하지 않는다.

		.. note::

			input 키값이 "Service"인 경우, RequestService 로 요청할 수 있다. 예) 종목검색(씽API용), ChartIndex(차트지표데이터 조회) TR

		.. warning:: 절대 개발자가 isNext값을 지정하지 않는다.


		::

				Query("t8407").request({
			 		"InBlock" : {
			 			"nrec" : len(codes),
			 			"shcode" : "".join(codes)
			 		}
			 	},{
			 		"OutBlock1" : DataFrame(columns=("shcode","hname","price","open","high",
							"low","sign","change","diff","volume"))
				})

				Query("t1101", False).request({
			 		"InBlock" : {
			 			"shcode" : shcode
			 		}
				},{
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
			 		"offer", "bid", "preoffercha", "prebidcha", "uplmtprice", "dnlmtprice",
			              "open", "high", "low", "ho_status", "hotime"
			 		)
				})

				Query("t1833").request({
					"Service" : filepath
				}, {
					"OutBlock" : ("JongCnt",),
					"OutBlock1" : DataFrame(columns=("shcode", "hname", "close", "change","diff"))
				})
		"""

		if not input:
			input = {"InBlock": {}}
		if not isNext:
			self.query.reset()
			self._parseInput(input)
			self._parseOutput(output)
			Query.sleep()

		#input setting
		for k,v in self.input.items():
			self.query.SetFieldData(self.type + self.inputName, k, 0, v)

		#call request
		Query._sleepTime()
		if hasattr(self, "service"):
# 			log.info(" - Call requestService")
			requestCode = self.query.RequestService(self.type, self.service)
		else:
# 			log.info(" - Call request (isNext:%s)" % isNext)
			requestCode = self.query.Request(isNext)
		if requestCode < 0:
			log.critical(xacom.parseErrorCode(requestCode))
			return

		while self.query.status == 0:
			pythoncom.PumpWaitingMessages()
			time.sleep(0.1)

		#output setting
		for k,v in self.output.items():
			if isinstance(v, DataFrame):
				#occur
				df =v
				if self.compress:
					self.query.Decompress(self.type + k)
				startIndex = len(df)
				for p in range(0,self.query.GetBlockCount(self.type + k)):
					for col in list(df.columns.values):
						df.set_value(p + startIndex, col, self.query.GetFieldData(self.type + k, col, p))
			else:
				for col in v.keys():
					v[col] = self.query.GetFieldData(self.type + k, col, 0)
					if self.query.IsNext:
						self.input[col] = v[col]

		self.query.status = 0
		if self.query.IsNext:
			if self.callNext:
				return self.request(input, output, True)
			else:
# 				log.debug(">>>>> [Query] 결과(callNext=False):%s" % self.output)
				return self.output
		else:
# 			log.debug(">>>>> [Query] 결과(callNext=True):%s" % self.output)
			return self.output