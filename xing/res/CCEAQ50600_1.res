BEGIN_FUNCTION_MAP
	.Func,선물옵션 CME 계좌잔고 및 평가현황,CCEAQ50600,SERVICE=CCEAQ50600,headtype=B,CREATOR=김승환,CREDATE=2012/05/01 12:18:45;
	BEGIN_DATA_MAP
	CCEAQ50600InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		잔고평가구분, BalEvalTp, BalEvalTp, char, 1;
		선물가격평가구분, FutsPrcEvalTp, FutsPrcEvalTp, char, 1;
	end
	CCEAQ50600OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		잔고평가구분, BalEvalTp, BalEvalTp, char, 1;
		선물가격평가구분, FutsPrcEvalTp, FutsPrcEvalTp, char, 1;
	end
	CCEAQ50600OutBlock2,Out1(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		계좌명, AcntNm, AcntNm, char, 40;
		평가예탁금총액, EvalDpsamtTotamt, EvalDpsamtTotamt, long, 15;
		현금평가예탁금액, MnyEvalDpstgAmt, MnyEvalDpstgAmt, long, 15;
		예탁금총액, DpsamtTotamt, DpsamtTotamt, long, 16;
		예탁현금, DpstgMny, DpstgMny, long, 16;
		인출가능총금액, PsnOutAbleTotAmt, PsnOutAbleTotAmt, long, 15;
		인출가능현금액, PsnOutAbleCurAmt, PsnOutAbleCurAmt, long, 16;
		주문가능총금액, OrdAbleTotAmt, OrdAbleTotAmt, long, 15;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		위탁증거금총액, CsgnMgnTotamt, CsgnMgnTotamt, long, 16;
		현금위탁증거금액, MnyCsgnMgn, MnyCsgnMgn, long, 16;
		추가증거금총액, AddMgnTotamt, AddMgnTotamt, long, 15;
		현금추가증거금액, MnyAddMgn, MnyAddMgn, long, 16;
		수수료, CmsnAmt, CmsnAmt, long, 16;
		선물평가손익금액, FutsEvalPnlAmt, FutsEvalPnlAmt, long, 16;
		옵션평가손익금액, OptEvalPnlAmt, OptEvalPnlAmt, long, 16;
		옵션평가금액, OptEvalAmt, OptEvalAmt, long, 16;
		옵션매매손익금액, OptBnsplAmt, OptBnsplAmt, long, 16;
		선물정산차금, FutsAdjstDfamt, FutsAdjstDfamt, long, 16;
		총손익금액, TotPnlAmt, TotPnlAmt, long, 16;
		순손익금액, NetPnlAmt, NetPnlAmt, long, 16;
		총평가금액, TotEvalAmt, TotEvalAmt, long, 16;
		입금금액, MnyinAmt, MnyinAmt, long, 16;
		출금금액, MnyoutAmt, MnyoutAmt, long, 16;
	end
	CCEAQ50600OutBlock3,Out2(*EMPTY*),output,occurs;
	begin
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		종목명, IsuNm, IsuNm, char, 40;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		매매구분, BnsTpNm, BnsTpNm, char, 10;
		미결제수량, UnsttQty, UnsttQty, long, 16;
		평균가, FnoAvrPrc, FnoAvrPrc, double, 19.8;
		현재가, NowPrc, NowPrc, double, 13.2;
		대비가, CmpPrc, CmpPrc, double, 13.2;
		평가손익, EvalPnl, EvalPnl, long, 16;
		손익률, PnlRat, PnlRat, double, 12.6;
		평가금액, EvalAmt, EvalAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
