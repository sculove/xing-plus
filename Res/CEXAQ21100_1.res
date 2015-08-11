BEGIN_FUNCTION_MAP
	.Func,유렉스 주문체결내역조회,CEXAQ21100,SERVICE=CEXAQ21100,headtype=B,CREATOR=이시종,CREDATE=2012/07/02 21:01:29;
	BEGIN_DATA_MAP
	CEXAQ21100InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		선택입력구분, ChoicInptTpCode, ChoicInptTpCode, char, 1;
		지점번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		체결구분, PrdtExecTpCode, PrdtExecTpCode, char, 1;
		정렬순서구분, StnlnSeqTp, StnlnSeqTp, char, 1;
	end
	CEXAQ21100OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		선택입력구분, ChoicInptTpCode, ChoicInptTpCode, char, 1;
		지점번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		체결구분, PrdtExecTpCode, PrdtExecTpCode, char, 1;
		정렬순서구분, StnlnSeqTp, StnlnSeqTp, char, 1;
	end
	CEXAQ21100OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		주문수량, OrdQty, OrdQty, long, 16;
		체결수량, ExecQty, ExecQty, long, 16;
	end
	CEXAQ21100OutBlock3,Out1(*EMPTY*),output,occurs;
	begin
		계좌번호1, AcntNo1, AcntNo1, char, 20;
		주문일, OrdDt, OrdDt, char, 8;
		주문번호, OrdNo, OrdNo, long, 10;
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		주문시각, OrdTime, OrdTime, char, 9;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		종목명, IsuNm, IsuNm, char, 40;
		매매구분, BnsTpNm, BnsTpNm, char, 10;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		정정취소구분명, MrcTpNm, MrcTpNm, char, 10;
		유렉스가격조건구분코드, ErxPrcCndiTpCode, ErxPrcCndiTpCode, char, 1;
		선물옵션호가유형명, FnoOrdprcPtnNm, FnoOrdprcPtnNm, char, 40;
		주문조건가격, OrdCndiPrc, OrdCndiPrc, double, 25.8;
		주문가, OrdPrc, OrdPrc, double, 13.2;
		주문수량, OrdQty, OrdQty, long, 16;
		주문구분명, OrdTpNm, OrdTpNm, char, 10;
		체결가, ExecPrc, ExecPrc, double, 13.2;
		체결수량, ExecQty, ExecQty, long, 16;
		미체결수량, UnercQty, UnercQty, long, 16;
		통신매체코드, CommdaCode, CommdaCode, char, 2;
		통신매체명, CommdaNm, CommdaNm, char, 40;
	end
	END_DATA_MAP
END_FUNCTION_MAP
