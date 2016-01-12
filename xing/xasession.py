# -*- coding: utf-8 -*-
import time
import pythoncom
import win32com.client

from xing import xacom
from xing.xaquery import Query
from xing.logger import Logger

log = Logger(__name__)

class _XASessionEvents:
    def __init__(self):
        self.code = -1
        self.msg = None

    def reset(self):
        self.code = -1
        self.msg = None

    def OnLogin(self, code, msg):
        self.code = str(code)
        self.msg = str(msg)

    def OnLogout(self):
        print("OnLogout method is called")

    def OnDisconnect(self):
        print("OnDisconnect method is called")

class Session:
    """세션 관리를 XASession 확장 클래스

        ::

            Session()
    """
    def __init__(self):
        self.session = win32com.client.DispatchWithEvents("XA_Session.XASession", _XASessionEvents)

    def login(self, server, user):
        """서버 연결을 요청한다
        """
        self.session.reset()
        self.session.ConnectServer(server["address"], server["port"])
        self.session.Login(user["id"], user["passwd"], user["certificate_passwd"], server["type"], 0)
        while self.session.code == -1:
            pythoncom.PumpWaitingMessages()
            time.sleep(0.1)

        if self.session.code == "0000":
            log.info("로그인 성공")
            return True
        else:
            log.critical("로그인 실패 : %s" % xacom.parseErrorCode(self.session.code))
            return False

    def logout(self):
        """서버와의 연결을 끊는다.
        """
        self.session.DisconnectServer()

    def account(self):
        acc = []
        for p in range(self.session.GetAccountListCount()):
            acc.append({
                "no" : self.session.GetAccountList(p),
                "name" : self.session.GetAccountName(p),
                "detailName" : self.session.GetAcctDetailName(p)
            })
        return acc

    def heartbeat(self):
        """서버에 시간을 조회해서 서버 연결여부를 확인한다.

        :return: 연결될 경우, time과 dt를 포함한 dictionary를 반환한다. 연결이 끊어졌을 경우, None을 반환한다
        """
        result = Query("t0167").request(input=None, output={
            "OutBlock" : ("dt","time")
        })
        if result:
            return {
                "time" : result["OutBlock"]["time"][:6],
                "dt" : result["OutBlock"]["dt"]
            }
        else:
            return None