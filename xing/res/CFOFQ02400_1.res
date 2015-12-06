BEGIN_FUNCTION_MAP
	.Func,계좌 미결제 약정현황(평균가),CFOFQ02400,SERVICE=CFOFQ02400,headtype=B,CREATOR=김정현,CREDATE=2012/03/16 14:07:10;
	BEGIN_DATA_MAP
	CFOFQ02400InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		등록시장코드, RegMktCode, RegMktCode, char, 2;
		매수일자, BuyDt, BuyDt, char, 8;
	end
	CFOFQ02400OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		등록시장코드, RegMktCode, RegMktCode, char, 2;
		매수일자, BuyDt, BuyDt, char, 8;
	end
	CFOFQ02400OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		선물약정수량, FutsCtrctQty, FutsCtrctQty, long, 16;
		옵션약정수량, OptCtrctQty, OptCtrctQty, long, 16;
		약정수량, CtrctQty, CtrctQty, long, 16;
		선물약정금액, FutsCtrctAmt, FutsCtrctAmt, long, 16;
		선물매수약정금액, FutsBuyctrAmt, FutsBuyctrAmt, long, 16;
		선물매도약정금액, FutsSlctrAmt, FutsSlctrAmt, long, 16;
		콜옵션약정금액, CalloptCtrctAmt, CalloptCtrctAmt, long, 16;
		콜매수금액, CallBuyAmt, CallBuyAmt, long, 16;
		콜매도금액, CallSellAmt, CallSellAmt, long, 16;
		풋옵션약정금액, PutoptCtrctAmt, PutoptCtrctAmt, long, 16;
		풋매수금액, PutBuyAmt, PutBuyAmt, long, 16;
		풋매도금액, PutSellAmt, PutSellAmt, long, 16;
		전체약정금액, AllCtrctAmt, AllCtrctAmt, long, 16;
		매수약정누계금액, BuyctrAsmAmt, BuyctrAsmAmt, long, 16;
		매도약정누계금액, SlctrAsmAmt, SlctrAsmAmt, long, 16;
		선물손익합계, FutsPnlSum, FutsPnlSum, long, 16;
		옵션손익합계, OptPnlSum, OptPnlSum, long, 16;
		전체손익합계, AllPnlSum, AllPnlSum, long, 16;
	end
	CFOFQ02400OutBlock3,Out2(*EMPTY*),output,occurs;
	begin
		선물옵션품목구분, FnoClssCode, FnoClssCode, char, 1;
		선물매도수량, FutsSellQty, FutsSellQty, long, 16;
		선물매도손익, FutsSellPnl, FutsSellPnl, long, 16;
		선물매수수량, FutsBuyQty, FutsBuyQty, long, 16;
		선물매수손익, FutsBuyPnl, FutsBuyPnl, long, 16;
		콜매도수량, CallSellQty, CallSellQty, long, 16;
		콜매도손익, CallSellPnl, CallSellPnl, long, 16;
		콜매수수량, CallBuyQty, CallBuyQty, long, 16;
		콜매수손익, CallBuyPnl, CallBuyPnl, long, 16;
		풋매도수량, PutSellQty, PutSellQty, long, 16;
		풋매도손익, PutSellPnl, PutSellPnl, long, 16;
		풋매수수량, PutBuyQty, PutBuyQty, long, 16;
		풋매수손익, PutBuyPnl, PutBuyPnl, long, 16;
	end
	CFOFQ02400OutBlock4,Out3(*EMPTY*),output,occurs;
	begin
		종목번호, IsuNo, IsuNo, char, 12;
		종목명, IsuNm, IsuNm, char, 40;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		매매구분, BnsTpNm, BnsTpNm, char, 10;
		잔고수량, BalQty, BalQty, long, 16;
		평균가, FnoAvrPrc, FnoAvrPrc, double, 19.8;
		당초금액, BgnAmt, BgnAmt, long, 16;
		당일청산수량, ThdayLqdtQty, ThdayLqdtQty, long, 16;
		현재가, Curprc, Curprc, double, 13.2;
		평가금액, EvalAmt, EvalAmt, long, 16;
		평가손익금액, EvalPnlAmt, EvalPnlAmt, long, 16;
		평가수익률, EvalErnrat, EvalErnrat, double, 12.6;
	end
	END_DATA_MAP
END_FUNCTION_MAP
