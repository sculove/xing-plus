# -*- coding: utf-8 -*-
import logging.handlers

# http://victorlin.me/posts/2012/08/26/good-logging-practice-in-python
def Logger(name):
    """파일 로그 클래스

        :param name: 로그 이름
        :type name: str

        ::

            Logger(__name__)
    """

    # 로거 인스턴스를 만든다
    log = logging.getLogger(name)
    # 환경변수를 읽어서 로깅 레벨과 로그를 남길 파일의 경로를 변수에 저장한다
    if LoggerSetting.LEVEL == 'DEBUG':
        fomatter = logging.Formatter("%(asctime)s[%(levelname)s|%(name)s,%(lineno)s] %(message)s")
        loggerLevel = logging.DEBUG
    else:
        fomatter = logging.Formatter("%(asctime)s[%(name)s] %(message)s")
        if LoggerSetting.LEVEL == 'INFO':
            loggerLevel = logging.INFO
        else:
            loggerLevel = logging.ERROR

    log.setLevel(loggerLevel)
    # 스트림과 파일로 로그를 출력하는 핸들러를 각각 만든다.
    fileHandler = logging.handlers.RotatingFileHandler(LoggerSetting.FILE, maxBytes=1024 * 1024 * LoggerSetting.MAX_MBYTE, backupCount=LoggerSetting.BACK_COUNT, encoding="utf-8")
    streamHandler = logging.StreamHandler()
    # 각 핸들러에 포매터를 지정한다.
    fileHandler.setFormatter(fomatter)
    streamHandler.setFormatter(fomatter)
    # 로거 인스턴스에 스트림 핸들러와 파일핸들러를 붙인다.
    log.addHandler(fileHandler)
    log.addHandler(streamHandler)
    return log

class LoggerSetting:
    """파일 로그 환경을 설정하는 클래스
    """
    LEVEL = "DEBUG"
    """로그 레벨
    """
    FILE ="xingplus.log"
    """로그 파일명
    """
    MAX_MBYTE = 10
    """로그 파일 하나의 최대 크기 (MByte)
    """
    BACK_COUNT = 10
    """로그 파일 유지 개수
    """
