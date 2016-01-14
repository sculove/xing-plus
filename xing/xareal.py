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
    """실시간 TR을 모니터링하는 작업 클래스

        :param type: 실시간 TR 코드
        :type type: str
        :param outputStyle: 실시간 TR 반환 데이터 컬럼
        :type outputStyle: tuple
        :param queue: 실시간 TR 반환 데이터를 저장할 큐 객체
        :type queue: Queue
        :return: self

        ::

            real = Real("SC1", ("eventid", "ordxctptncode", "ordmktcode", "ordptncode", "mgmtbrnno",
                "accno1","Isuno", "Isunm", "ordno", "orgordno", "execno",
                "ordqty", "ordprc", "execqty", "execprc", "ordtrxptncode",
                "secbalqty", "avrpchsprc", "pchsant"), Queue(100))
    """
    def __init__(self, type, outputStyle, queue):
        threading.Thread.__init__(self)
        self.real = win32com.client.DispatchWithEvents("XA_DataSet.XAReal", _XARealEvents)
        self.real.LoadFromResFile("res/" + type + ".res")
        self.real.queue = queue
        self.real.outputStyle = outputStyle
        self.running = True

    def addTarget(self, value = None, name = "shcode"):
        """타겟을 등록한다. 여기서 타겟은 모니터링하는 대상이다.

            :param value: 모니터링할 대상. 기본값은 None
            :type value: None, str
            :param name: 모니터링할 대상의 속성. 기본값은 "shcode"
            :type name: str
            :return: self

            .. note::

                - 타겟에 정보를 전달할 필요가 없는 '주문 체결'과 같은 작업도 addTarget를 호출하여 모니터링을 시작해야한다.
                - '코스피 호가'는 타겟(종목코드(shcode))를 추가로 여러개 모니터링 할 수 있다.

            ::

                real.addTarget()
                real.addTarget("005930")
                real.addTarget(["005930","035420"])
        """

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

    def removeAllTargets(self):
        """모든 타겟의 모니터링을 제거한다.

            ::

                real.removeAllTargets()
        """
        self.real.UnadviseRealData()


    def removeTarget(self, key):
        """특정 타겟의 모니터링을 제거한다.

            :param key: 특정 타겟
            :type key: str

            ::

                real.removeAllTargets()
        """
        self.real.UnAdviseRealDataWithKey(key)

    def run(self):
        """실시간 TR을 모니터링 한다

            ::

                real.run()
        """
        while self.running:
            pythoncom.PumpWaitingMessages()
            # print("[%d] Thread is alive ? : %s" % (self.ident, self.is_alive()))
            time.sleep(0.1)

class RealManager:
    """실시간 TR을 모니터링하는 작업 클래스(Real)을 관리하는 클래스

    ::

        manager = RealManager()
    """
    def __init__(self):
        self.tasks = {}
        self.queues = {}

    def addTask(self, type, outputStyle, maxQueue):
        """실시간 작업을 추가한다

            :param type: 실시간 TR 코드
            :type type: str
            :param outputStyle: 실시간 TR 반환 데이터 컬럼
            :type outputStyle: tuple
            :param maxQueue: 실시간 TR 반환 데이터를 저장할 큐의 개수
            :type maxQueue: int
            :return: Real

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

            :param type: 실시간 TR 코드
            :type type: str

        ::

            manager.removeTask("SC1")
        """
        task = self.getTask(type)
        if task:
            task.removeAllTargets()
            # @todo check 큐에 있는걸 다 비우고 할것인가?
            task.running = False
            del self.queues[type]
            del self.tasks[type]

    def getTask(self, type):
        """실시간 작업을 얻는다.

            :param type: 실시간 TR 코드
            :type type: str
            :return: 실시간 작업 객체
            :rtype: Real

        ::

            manager.getTask("SC1")
        """
        return self.tasks[type] if type in self.tasks else None

    def getQueue(self, type):
        """실시간 작업의 큐를 얻는다.

            :param type: 실시간 TR 코드
            :type type: str
            :return: 실시간 작업 객체의 큐
            :rtype: Queue

        ::

            manager.getQueue("SC1")
        """
        return self.queues[type] if type in self.queues else None

    def run(self, cb = None):
        """실시간 TR별 큐의 정보를 추출하여 callback 함수로 전달한다.

            :param cb: 큐에서 추출된 정보를 받을 callback 함수
            :type type: def

            .. note::

                callback 함수는 type(실시간 TR코드)와 data(실시간 TR의 outputStyle의 데이터)를 파라미터로 갖는다.

        ::

            def callback(type, data):
                for i in range(len(data)):
                    if type == "SC1":
                        # ...
                    elif type == "JIF":
                        # ...
                    else:
                        # ...

            manager.run(callback)
        """
        for k,v in self.queues.items():
            data = []
            queue = self.getQueue(k)
            if queue and queue.qsize() > 0:
                for i in range(queue.qsize()):
                    data.append(queue.get())
            if cb:
                cb(k, data)