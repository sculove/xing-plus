# -*- coding: utf-8 -*-
import threading
import time
from queue import Queue

import pythoncom
import win32com.client

from xing.logger import Logger

log = Logger(__name__)

class _XARealEvents:
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

class Real(threading.Thread):
    """

    ::

        Real("SC1", ("eventid", "ordxctptncode", "ordmktcode", "ordptncode", "mgmtbrnno",
            "accno1","Isuno", "Isunm", "ordno", "orgordno", "execno",
            "ordqty", "ordprc", "execqty", "execprc", "ordtrxptncode",
            "secbalqty", "avrpchsprc", "pchsant"), Queue(100)).addTarget().start()
    """
    def __init__(self, type, outputStyle, queue):
        threading.Thread.__init__(self)
        self.real = win32com.client.DispatchWithEvents("XA_DataSet.XAReal", _XARealEvents)
        self.real.LoadFromResFile("res/" + type + ".res")
        self.real.queue = queue
        self.real.outputStyle = outputStyle
        self.running = True

    # 타겟을 등록한다. 여기서 타겟은 모니터링하는 대상
    # 예) 특정 종목을 추가로 등록
    def addTarget(self, value = None, name = "shcode"):
        if value == None:
            self.removeAllTargets()
            self.real.AdviseRealData()
        else:
            if isinstance(value, str):
                value = [ value ]
            for v in value:
                self.real.SetFieldData("InBlock", name, v)
                self.real.AdviseRealData()
        return self

    # 모든 타겟의 모니터링을 제거한다.
    def removeAllTargets(self):
        self.real.UnadviseRealData()

    # 특정 타겟의 모니터링을 제거한다.
    def removeTarget(self, key):
        self.real.UnAdviseRealDataWithKey(key)

    def run(self):
        while self.running:
            pythoncom.PumpWaitingMessages()
            # print("[%d] Thread is alive ? : %s" % (self.ident, self.is_alive()))
            time.sleep(0.1)

class RealManager:
    """
    ::

        RealManager()
    """
    def __init__(self):
        self.tasks = {}
        self.queues = {}

    def addTask(self, type, outputStyle, maxQueue):
        """실시간 작업을 추가한다

        ::

            # 주문 체결
            manager.addTask("SC1", ("Isuno", "Isunm", "ordno", "orgordno",
                     "eventid", "ordxctptncode", "ordmktcode",
                     "ordptncode", "mgmtbrnno",  "accno1",
                     "execno", "ordqty", "ordprc", "execqty",
                     "execprc", "ordtrxptncode", "secbalqty",
                     "avrpchsprc", "pchsant"), 50).addTarget()

            # 코스피 호가
            manager.addTask("H1_", ("shcode", "hottime","totofferrem", "totbidrem",
                        "offerho1", "bidho1", "offerrem1", "bidrem1",
                        "offerho2", "bidho2", "offerrem2", "bidrem2",
                        "offerho3", "bidho3", "offerrem3", "bidrem3",
                        "offerho4", "bidho4", "offerrem4", "bidrem4",
                        "offerho5", "bidho5", "offerrem5", "bidrem5",
                        "offerho6", "bidho6", "offerrem6", "bidrem6",
                        "offerho7", "bidho7", "offerrem7", "bidrem7",
                        "offerho8", "bidho8", "offerrem8", "bidrem8",
                        "offerho9", "bidho9", "offerrem9", "bidrem9",
                        "offerho10", "bidho10", "offerrem10", "bidrem10"
                    ), 100).addTarget("004170")

            # 코스닥 호가
            manager.addTask("HA_", ("shcode", "hottime","totofferrem", "totbidrem",
                        "offerho1", "bidho1", "offerrem1", "bidrem1",
                        "offerho2", "bidho2", "offerrem2", "bidrem2",
                        "offerho3", "bidho3", "offerrem3", "bidrem3",
                        "offerho4", "bidho4", "offerrem4", "bidrem4",
                        "offerho5", "bidho5", "offerrem5", "bidrem5",
                        "offerho6", "bidho6", "offerrem6", "bidrem6",
                        "offerho7", "bidho7", "offerrem7", "bidrem7",
                        "offerho8", "bidho8", "offerrem8", "bidrem8",
                        "offerho9", "bidho9", "offerrem9", "bidrem9",
                        "offerho10", "bidho10", "offerrem10", "bidrem10"
                    ), 100).addTarget("168330")
        """
        queue = Queue(maxQueue)
        realTask = Real(type, outputStyle, queue)
        self.tasks[type] = realTask
        self.queues[type] = queue
        realTask.start()
        return realTask

    def removeTask(self, type):
        """실시간 작업을 제거한다.
        """
        task = self.getTask(type)
        if task:
            task.removeAllTargets()
            # @todo check 큐에 있는걸 다 비우고 할것인가?
            task.running = False
            del self.queues[type]
            del self.tasks[type]

    def getTask(self, type):
        return self.tasks[type] if type in self.tasks else None

    def getQueue(self, type):
        return self.queues[type] if type in self.queues else None

    def run(self, cb = None):
        """큐에 있는 정보를 callback 함수로 호출
        """
        for k,v in self.queues.items():
            data = []
            queue = self.getQueue(k)
            if queue and queue.qsize() > 0:
                for i in range(queue.qsize()):
                    data.append(queue.get())
            if cb:
                cb(k, data)