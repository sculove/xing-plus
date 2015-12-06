# -*- coding: utf-8 -*-
import pythoncom
import win32com.client

from com.logger import Logger
from xing.xacom import parseErrorCode


log = Logger(__name__)

class XASessionEvents:
    code = -1
    msg = None
    def OnLogin(self, code, msg):
        XASessionEvents.code = str(code);
        XASessionEvents.msg = str(msg);
    def OnLogout(self):
        print("OnLogout method is called")
    def OnDisconnect(self):
        print("OnDisconnect method is called")

class Session:
    def __init__(self):
        self.session = win32com.client.DispatchWithEvents("XA_Session.XASession", XASessionEvents)

    def login(self, server, user):
        XASessionEvents.code = -1
        XASessionEvents.msg = None
        self.session.ConnectServer(server["address"], server["port"])
        self.session.Login(user["id"], user["passwd"], user["certificate_passwd"], server["type"], 0)
        while XASessionEvents.code == -1:
            pythoncom.PumpWaitingMessages()
        if XASessionEvents.code == "0000":
            log.info("로그인 성공")
            return True
        else:
            log.critical("로그인 실패 : %s" % parseErrorCode(XASessionEvents.code))
            return False

    def logout(self):
        if self.session.IsConnected():
            print("로그인완료")
            self.session.DisconnectServer()
        else:
            print("로그인이 아님")

    def account(self):
        acc = []
        for p in range(self.session.GetAccountListCount()):
            acc.append({
                "no" : self.session.GetAccountList(p),
                "name" : self.session.GetAccountName(p),
                "detailName" : self.session.GetAcctDetailName(p)
            })
        return acc

