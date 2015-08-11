BEGIN_FUNCTION_MAP
	.Func,현물계좌주문체결내역조회,CSPAQ13700,SERVICE=CSPAQ13700,headtype=B,CREATOR=이상은,CREDATE=2015/04/13 08:39:53;
	BEGIN_DATA_MAP
	CSPAQ13700InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		주문시장코드, OrdMktCode, OrdMktCode, char, 2;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		종목번호, IsuNo, IsuNo, char, 12;
		체결여부, ExecYn, ExecYn, char, 1;
		주문일, OrdDt, OrdDt, char, 8;
		시작주문번호2, SrtOrdNo2, SrtOrdNo2, long, 10;
		역순구분, BkseqTpCode, BkseqTpCode, char, 1;
		주문유형코드, OrdPtnCode, OrdPtnCode, char, 2;
	end
	CSPAQ13700OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		주문시장코드, OrdMktCode, OrdMktCode, char, 2;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		종목번호, IsuNo, IsuNo, char, 12;
		체결여부, ExecYn, ExecYn, char, 1;
		주문일, OrdDt, OrdDt, char, 8;
		시작주문번호2, SrtOrdNo2, SrtOrdNo2, long, 10;
		역순구분, BkseqTpCode, BkseqTpCode, char, 1;
		주문유형코드, OrdPtnCode, OrdPtnCode, char, 2;
	end
	CSPAQ13700OutBlock2,OUT1(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		매도체결금액, SellExecAmt, SellExecAmt, long, 16;
		매수체결금액, BuyExecAmt, BuyExecAmt, long, 16;
		매도체결수량, SellExecQty, SellExecQty, long, 16;
		매수체결수량, BuyExecQty, BuyExecQty, long, 16;
		매도주문수량, SellOrdQty, SellOrdQty, long, 16;
		매수주문수량, BuyOrdQty, BuyOrdQty, long, 16;
	end
	CSPAQ13700OutBlock3,OUT(*EMPTY*),output,occurs;
	begin
		주문일, OrdDt, OrdDt, char, 8;
		관리지점번호, MgmtBrnNo, MgmtBrnNo, char, 3;
		주문시장코드, OrdMktCode, OrdMktCode, char, 2;
		주문번호, OrdNo, OrdNo, long, 10;
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		종목번호, IsuNo, IsuNo, char, 12;
		종목명, IsuNm, IsuNm, char, 40;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		매매구분, BnsTpNm, BnsTpNm, char, 10;
		주문유형코드, OrdPtnCode, OrdPtnCode, char, 2;
		주문유형명, OrdPtnNm, OrdPtnNm, char, 40;
		주문처리유형코드, OrdTrxPtnCode, OrdTrxPtnCode, long, 9;
		주문처리유형명, OrdTrxPtnNm, OrdTrxPtnNm, char, 50;
		정정취소구분, MrcTpCode, MrcTpCode, char, 1;
		정정취소구분명, MrcTpNm, MrcTpNm, char, 10;
		정정취소수량, MrcQty, MrcQty, long, 16;
		정정취소가능수량, MrcAbleQty, MrcAbleQty, long, 16;
		주문수량, OrdQty, OrdQty, long, 16;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
		체결수량, ExecQty, ExecQty, long, 16;
		체결가, ExecPrc, ExecPrc, double, 15.2;
		체결처리시각, ExecTrxTime, ExecTrxTime, char, 9;
		최종체결시각, LastExecTime, LastExecTime, char, 9;
		호가유형코드, OrdprcPtnCode, OrdprcPtnCode, char, 2;
		호가유형명, OrdprcPtnNm, OrdprcPtnNm, char, 40;
		주문조건구분, OrdCndiTpCode, OrdCndiTpCode, char, 1;
		전체체결수량, AllExecQty, AllExecQty, long, 16;
		통신매체코드, RegCommdaCode, RegCommdaCode, char, 2;
		통신매체명, CommdaNm, CommdaNm, char, 40;
		회원번호, MbrNo, MbrNo, char, 3;
		예약주문여부, RsvOrdYn, RsvOrdYn, char, 1;
		대출일, LoanDt, LoanDt, char, 8;
		주문시각, OrdTime, OrdTime, char, 9;
		운용지시번호, OpDrtnNo, OpDrtnNo, char, 12;
		주문자ID, OdrrId, OdrrId, char, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
