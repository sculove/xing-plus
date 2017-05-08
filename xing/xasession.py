# -*- coding: utf-8 -*-
import win32com.client
import time
import pythoncom
import os
import configparser
from getpass import getpass
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

            session = Session()
    """
    def __init__(self):
        self.session = win32com.client.DispatchWithEvents("XA_Session.XASession", _XASessionEvents)

    def login(self, *argv):
        """서버 연결을 요청한다

            :type argv: list
            :param argv: 설정 파일(argv가 1개일 경우, str 타입) 또는 서버, 사용자 정보 (argv가 2개인 경우, object)

            :param configfile: 설정 파일
            :type configfile: bool
            :param server: 서버 정보
            :type server: object {address:"서버주소", port:서버포트, type: 서버타입}
            :param user: 사용자 정보
            :type user: object {id:"아이디", passwd:"비밀번호", account_passwd:"계좌비밀번호", certificate_passwd:"공인인증서비밀번호"}
            :return: 로그인이 성공하면 True, 실패하면 Fasle
            :rtype: bool

            ::

                session = Session()
                # 설정 파일을 읽어 로그인 하는 경우
                session.login("config.conf")

                # 서버와 사용자 정보를 입력하여, 로그인 하는 경우
                server = {
                    "address" :"hts.ebestsec.co.kr",    # 서버주소
                    "port" : 20001, # 서버포트
                    "type" : 0  # 서버 타입
                }
                user = {
                    "id" : "sculove",   # 아이디
                    "passwd" : "12345678",  # 비밀번호
                    "account_passwd" : "1234",  # 계좌 비밀번호
                    "certificate_passwd" : "12345678"   # 공인인증서 비밀번호
                }
                session.login(server, user)
        """
        argvCount = len(argv)
        if argvCount == 1:
            rst = self.load(argv[0])
            server = rst["server"]
            user = rst["user"]
        elif argvCount >= 2:
            server = argv[0]
            user = argv[1]

        if not user["id"] or not user["passwd"]:
            log.critical("로그인 실패 : 서버와 사용자 정보를 입력해주세요")
            return False

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

            ::

                session.logout()
        """
        self.session.DisconnectServer()

    def account(self):
        """계좌 정보를 반환한다.

            :return: 계좌 정보를 반환한다.
            :rtype: object {no:"계좌번호",name:"계좌이름",detailName:"계좌상세이름"}

            ::

                session.account()
        """
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
        :rtype: None, object

            - 서버와의 연결이 끊어졌으면 None
            - 서버와의 연결이 유효하면 { time:"mmhhss", dt:"yyyymmdd"}

        ::

            session.heartbeat()
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


    def load(self, configfile):
        """서버와 사용자 정보의 config 파일을 읽거나 생성한다.

            :param configfile: 서버와 사용자 정보의 config 파일 (경로에 파일이 존재하지 않을 경우, 생성한다)
            :type configfile: str
            :return: 서버와 사용자 정보
            :rtype: object {server:{}, user: {}}

            ::
                session = Session()
                session.load(".config.conf")

        """
        config = configparser.ConfigParser()
        if os.path.isfile(configfile):
            config.read(configfile)

        if not config.has_section("SERVER"):
            config.add_section("SERVER");
        if not config.has_section("USER"):
            config.add_section("USER");

        address = config.get("SERVER", "address") if config.has_option("SERVER", "address") else ""
        address = address if address else input("[?] 접속할 서버(hts.ebestsec.co.kr)가 맞나요? \n(맞으면 엔터, 그렇지 않으면 접속할 주소를 입력해주세요) : ")
        if address == "":
            address = "hts.ebestsec.co.kr"
        port = config.get("SERVER", "port") if config.has_option("SERVER", "port") else ""
        port = port if port else input("[?] 접속할 서버 포트(20001)가 맞나요? \n(맞으면 엔터, 그렇지 않으면 접속할 포트를 입력해주세요) : ")
        if port == "":
            port = "20001"
        id = config.get("USER", "id") if config.has_option("USER", "id") else ""
        id = id if id else input("[?] 계정(id)을 입력해주세요 > ")
        passwd = config.get("USER", "passwd") if config.has_option("USER", "passwd") else ""
        passwd = passwd if passwd else getpass("[?] 계정 암호(passwd)를 입력해주세요 > ")
        certificate_passwd = config.get("USER", "certificate_passwd") if config.has_option("USER", "certificate_passwd") else ""
        certificate_passwd = certificate_passwd if certificate_passwd else getpass("[?] 인증서 암호(account_passwd)를 입력해주세요 > ")
        account_passwd = config.get("USER", "account_passwd") if config.has_option("USER", "account_passwd") else ""
        account_passwd = account_passwd if account_passwd else getpass("[?] 계좌 암호(account_passwd)를 입력해주세요 > ")

        config["SERVER"]["address"] = address
        config["SERVER"]["port"] = port
        config["USER"]["id"] = id
        config["USER"]["passwd"] = passwd
        config["USER"]["certificate_passwd"] = certificate_passwd
        config["USER"]["account_passwd"] = account_passwd
        with open(configfile, 'w') as configfile:
            config.write(configfile)

        return {
            "server": {
                "address" : address,
                "port" : port,
                "type" : 0
            },
            "user": {
                "id" : id,
                "passwd" : passwd,
                "certificate_passwd" : certificate_passwd,
                "account_passwd" : account_passwd
            }
        }
