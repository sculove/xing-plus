# -*- coding: utf-8 -*-
import pythoncom
import win32com.client
from com.logger import Logger
from xing import xacom
import time
log = Logger(__name__)

class XASessionEvents:
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
    def __init__(self):
        self.session = win32com.client.DispatchWithEvents("XA_Session.XASession", XASessionEvents)

    def login(self, server, user):
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