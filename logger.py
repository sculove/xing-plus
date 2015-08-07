# -*- coding: utf-8 -*-
from config import Config
import logging
import logging.handlers

def Logger(name):
    # 로거 인스턴스를 만든다
    logger = logging.getLogger(name)
        # 환경변수를 읽어서 로깅 레벨과 로그를 남길 파일의 경로를 변수에 저장한다
    if Config.LOG["level"] == 'DEBUG':
        fomatter = logging.Formatter("%(asctime)s[%(levelname)s|%(name)s,%(lineno)s] %(message)s")
        loggerLevel = logging.DEBUG
    else:
        fomatter = logging.Formatter("%(asctime)s[%(name)s] %(message)s")
        if Config.LOG["level"] == 'INFO':
            loggerLevel = logging.INFO
        else:
            loggerLevel = logging.ERROR

    logger.setLevel(loggerLevel)
    # 스트림과 파일로 로그를 출력하는 핸들러를 각각 만든다.
    fileHandler = logging.handlers.RotatingFileHandler(Config.LOG["file"], maxBytes=1024 * 1024 * int(Config.LOG["maxmb"]), backupCount=int(Config.LOG["backupcount"]), encoding="utf-8")
    streamHandler = logging.StreamHandler()
    # 각 핸들러에 포매터를 지정한다.
    fileHandler.setFormatter(fomatter)
    streamHandler.setFormatter(fomatter)
    # 로거 인스턴스에 스트림 핸들러와 파일핸들러를 붙인다.
    logger.addHandler(fileHandler)
    logger.addHandler(streamHandler)
    return logger
