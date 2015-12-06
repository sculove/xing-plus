BEGIN_FUNCTION_MAP
	.Func,유렉스 야간장잔고및 평가현황,CEXAQ31100,SERVICE=CEXAQ31100,headtype=B,CREATOR=이시종,CREDATE=2012/12/22 14:39:24;
	BEGIN_DATA_MAP
	CEXAQ31100InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		종목코드, IsuCode, IsuCode, char, 12;
		잔고평가구분, BalEvalTp, BalEvalTp, char, 1;
		선물가격평가구분, FutsPrcEvalTp, FutsPrcEvalTp, char, 1;
	end
	CEXAQ31100OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		종목코드, IsuCode, IsuCode, char, 12;
		잔고평가구분, BalEvalTp, BalEvalTp, char, 1;
		선물가격평가구분, FutsPrcEvalTp, FutsPrcEvalTp, char, 1;
	end
	CEXAQ31100OutBlock2,Out1(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		계좌명, AcntNm, AcntNm, char, 40;
		매매손익금액, BnsplAmt, BnsplAmt, long, 16;
		정산차금, AdjstDfamt, AdjstDfamt, long, 16;
		총평가금액, TotEvalAmt, TotEvalAmt, long, 16;
		총손익금액, TotPnlAmt, TotPnlAmt, long, 16;
	end
	CEXAQ31100OutBlock3,Out2(*EMPTY*),output,occurs;
	begin
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		종목명, IsuNm, IsuNm, char, 40;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		매매구분, BnsTpNm, BnsTpNm, char, 10;
		미결제수량, UnsttQty, UnsttQty, long, 16;
		청산가능수량, LqdtAbleQty, LqdtAbleQty, long, 16;
		평균가, FnoAvrPrc, FnoAvrPrc, double, 19.8;
		기준가, BasePrc, BasePrc, double, 30.10;
		현재가, NowPrc, NowPrc, double, 13.2;
		대비가, CmpPrc, CmpPrc, double, 13.2;
		평가금액, EvalAmt, EvalAmt, long, 16;
		평가손익, EvalPnl, EvalPnl, long, 16;
		손익률, PnlRat, PnlRat, double, 12.6;
		미결제금액, UnsttAmt, UnsttAmt, long, 16;
		매매손익금액, BnsplAmt, BnsplAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
