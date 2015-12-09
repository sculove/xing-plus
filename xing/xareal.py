# -*- coding: utf-8 -*-
import win32com.client
import pythoncom
import threading
from com.logger import Logger
from queue import Queue
import time
log = Logger(__name__)

class XARealEvents:
    def __init__(self):
        self.queue = None
        self.outputStyle = None

    # put data in queue
    def _putData(self, trCode):
        output = { }
        for v in self.outputStyle:
            output[v] = self.GetFieldData("OutBlock", v)
        return output

    def OnReceiveRealData(self, szTrCode):
        log.debug(" - OnReceiveRealData (%s)" % szTrCode )
        self.queue.put(self._putData(szTrCode))

'''
Real("SC1", ("eventid", "ordxctptncode", "ordmktcode", "ordptncode", "mgmtbrnno",
    "accno1","Isuno", "Isunm", "ordno", "orgordno", "execno",
    "ordqty", "ordprc", "execqty", "execprc", "ordtrxptncode",
    "secbalqty", "avrpchsprc", "pchsant"), Queue(100)).addTarget().start()
'''
class Real(threading.Thread):
    def __init__(self, type, outputStyle, queue):
        threading.Thread.__init__(self)
        self.real = win32com.client.DispatchWithEvents("XA_DataSet.XAReal", XARealEvents)
        self.real.LoadFromResFile("res/" + type + ".res")
        self.real.queue = queue
        self.real.outputStyle = outputStyle
        self.running = True

    # 타겟을 등록한다. 여기서 타겟은 모니터링하는 대상
    # 예) 특정 종목을 추가로 등록
    def addTarget(self, param = {}):
        if isinstance(param, dict):
            param = [ param ]
        for t in param:
            for v in t.keys():
                self.real.SetFieldData("InBlock", v, t[v])
            self.real.AdviseRealData()
        return self

    # 모든 타겟의 모니터링을 제거한다.
    def removeAllTargets(self):
        self.real.UnadviseRealData()

    # 특정 타겟의 모니터링을 제거한다.
    def removeTargets(self, key):
        self.real.UnAdviseRealDataWithKey(key)

    def run(self):
        while self.running:
            pythoncom.PumpWaitingMessages()
            # print("[%d] Thread is alive ? : %s" % (self.ident, self.is_alive()))
            time.sleep(0.1)

'''
manager = RealManager()
manager.addTask("SC1", ("eventid", "ordxctptncode", "ordmktcode", "ordptncode", "mgmtbrnno",
                    "accno1","Isuno", "Isunm", "ordno", "orgordno", "execno",
                    "ordqty", "ordprc", "execqty", "execprc", "ordtrxptncode",
                    "secbalqty", "avrpchsprc", "pchsant"), 100).addTarget().start()
'''
class RealManager:
    def __init__(self):
        self.tasks = {}
        self.queues = {}

    # 실시간 작업을 추가한다
    def addTask(self, type, outputStyle, maxQueue):
        queue = Queue(maxQueue)
        realTask = Real(type, outputStyle, queue)
        self.tasks[type] = realTask
        self.queues[type] = queue
        return realTask

    # 작업을 제거한다.
    def removeTask(self, type):
        task = self.getTask(type)
        if task:
            # @todo check 큐에 있는걸 다 비우고 할것인가?
            task.running = False
            del self.queues[type]
            del self.tasks[type]

    def getTask(self, type):
        return self.tasks[type] if type in self.tasks else None

    def getQueue(self, type):
        return self.queues[type] if type in self.queues else None