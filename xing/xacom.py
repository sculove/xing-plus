# -*- coding: utf-8 -*-
from datetime import datetime, timedelta
import math
import pandas

def parseErrorCode(code):
    """에러코드 메시지

        :param code: 에러 코드
        :type code: str
        :return: 에러코드 메시지를 반환

        ::

            parseErrorCode("00310") # 모의투자 조회가 완료되었습니다
    """
    code = str(code)
    ht = {
        "-1" : "통신소켓 생성에 실패하였습니다",
        "-2" : "서버접속에 실패하였습니다",
        "-3" : "서버주소가 틀렸습니다",
        "-4" : "서버 접속시간이 초과되었습니다",
        "-5" : "이미 서버에 연결중입니다",
        "-6" : "해당TR은 사용할수 없습니다",
        "-7" : "로그인을 해야 사용이 가능합니다",
        "-8" : "시세전용에서는 사용이 불가능합니다",
        "-9" : "해당 계좌번호를 가지고 있지 않습니다",
        "-10" : "패킷의 크기가 잘못되었습니다",
        "-11" : "Data의 크기가 다릅니다",
        "-12" : "계좌가 존재하지 않습니다",
        "-13" : "Request ID 부족",
        "-14" : "소켓이 생성되지 않았습니다",
        "-15" : "암호화 생성에 실패했습니다",
        "-16" : "데이터 전송에 실패했습니다",
        "-17" : "암호화(RTN)처리에 실패했습니다",
        "-18" : "공인인증 파일이 없습니다",
        "-19" : "공인인증 Function이 없습니다",
        "-20" : "메모리가 충분하지 않습니다",
        "-21" : "TR의 시간당 전송제한에 걸렸습니다",
        "-22" : "해당 TR은 해당 함수를 이용할 수 없습니다",
        "-23" : "로그인이 안되었거나, TR에 대한 정보를 찾을 수 없습니다",
        "-24" : "계좌위치가 지정되지 않았습니다",
        "-25" : "계좌를 가지고 있지 않습니다",
        "-26" : "파일 읽기에 실패했습니다 (종목 검색 조회 시, 파일이 없는 경우)",
        "0000" : "정상완료되었습니다",
        "00310" : "모의투자 조회가 완료되었습니다",
        "00136" : "조회가 완료되었습니다",
        "00020" : "application program exit[TR:CSPAQ]",
        "03669" : "비밀번호 오류입니다. (5회중 4회 남았습니다)",
        "01796" : "비밀번호 연속 오류허용횟수를 초과하였습니다. 콜센터로 문의하시기 바랍니다"
    }
    return ht[code] + " (%s)" % code if code in ht else code

def parseTR(trCode):
    """요청 TR 코드 파싱

        :param trCode: TR 코드
        :type trCode: str
        :return: TR코드 내역을 반환

        ::

            parseTR("t0425") # 주식체결/미체결
    """
    ht = {
        "t0424" : "주식잔고",
        "t0425" : "주식체결/미체결",
        "t8407" : "멀티현재가조회",
        "t8412" : "주식챠트(N분)",
        "t8413" : "주식챠트(일주월)",
        "t8430" : "주식종목조회",
        "t1833" : "종목검색(씽API용)",
        "t1101" : "주식현재가호가조회",
        "t1102" : "주식현재가(시세)조회",
        "t1411" : "증거금율별종목조회",
        "t1702" : "외인기관종목별동향",
        "t1301" : "주식시간대별체결조회",
        "t0167" : "서버시간조회",
        "t9945" : "주식마스터조회API용",
        "CSPAQ12200" : "현물계좌예수금 주문가능금액 총평가 조회",
        "CSPAT00600" : "현물주문",
        "CSPAT00700" : "현물정정주문",
        "CSPAT00800" : "현물취소주문",
        "CSPBQ00200" : "현물계좌 증거금률별 주문가능 수량 조회",
        "HA_" : "KOSDAQ호가잔량",
        "H1_" : "KOSPI호가잔량",
        "SC0" : "주식주문접수",
        "SC1" : "주식주문체결",
        "SC2" : "주식주문정정",
        "SC3" : "주식주문취소",
        "SC4" : "주식주문거부",
        "JIF" : "장운영정보"
    }
    return ht[trCode] if trCode in ht else ""

def parseJstatus(jstatus):
    """장 운영시간 파싱

        :param jstatus: 장 운영시간 코드
        :type jstatus: str
        :return: 장 운영시간 내역을 반환

        ::

            parseJstatus("66") # 사이드카 매수발동

        .. note::

            - 코스피로 장시간을 확인해야함.
            - 선물/옵션 장마감 5분전, 1분전, 10초전은 들어오지 않음
    """
    ht = {
        "11" : "장전동시호가개시",
        "21" : "장시작",
        "22" : "장개시10초전",
        "23" : "장개시1분전",
        "24" : "장개시5분전",
        "25" : "장개시10분전",
        "31" : "장후동시호가개시",
        "41" : "장마감",
        "42" : "장마감10초전",
        "43" : "장마감1분전",
        "44" : "장마감5분전",
        "51" : "시간외종가매매개시",
        "52" : "시간외종가매매종료",
        "53" : "시간외단일가매매개시",
        "54" : "시간외단일가매매종료",
        "61" : "서킷브레이크발동",
        "62" : "서킷브레이크해제",
        "63" : "서킷브레이크단일가접수",
        "64" : "사이드카 매도발동",
        "65" : "사이드카 매도해제",
        "66" : "사이드카 매수발동"
    }
    return ht[jstatus] if jstatus in ht else ""


def parseMarket(jangubun):
    """장 구분

        :param jangubun: 시장 구분 코드
        :type jangubun: str
        :return: 시장 내역을 반환

        ::

            parseMarket("1") # 코스피
    """
    ht = {
        "1" : "코스피",
        "2" : "코스닥",
        "5" : "선물/옵션",
        "7" : "CME야간선물",
        "8" : "EUREX야간옵션선물"
    }
    return ht[jangubun] if jangubun in ht else ""


def timeType(base = None):
	"""장 전,후 시간을 반환

		:param base: 기준일시
		:type base: datetime
		:return: 기준일시에 맞는 타입문자를 반환

			BEFORE(장시작 전),SHOWTIME(장 운영시간),AFTER(장종료 후)

		::

			timeType()
			timeType(datetime.today())
	"""
	today = base if base else datetime.today()
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
	"""오늘 날자를 yyyymmdd 형태로 반환

		::

			today()	# 20160101
	"""
	return datetime.today().strftime("%Y%m%d")


def latestBusinessDay():
	"""가장 최근 영업일을 yyyymmdd 형태로 반환

		::

			latestBusinessDay()	# 20160104
	"""
	baseday = datetime.today()
	if baseday.weekday() > 4:
		while baseday.weekday() > 4:
			baseday = baseday - timedelta(days=1)
	return baseday.strftime("%Y%m%d")



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

