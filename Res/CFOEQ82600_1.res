BEGIN_FUNCTION_MAP
	.Func,선물옵션 일별 계좌손익내역,CFOEQ82600,SERVICE=CFOEQ82600,headtype=B,CREATOR=황규석,CREDATE=2013/01/06 17:48:51;
	BEGIN_DATA_MAP
	CFOEQ82600InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		조회구분, QryTp, QryTp, char, 1;
		정렬순서구분, StnlnSeqTp, StnlnSeqTp, char, 1;
		선물옵션잔고평가구분코드, FnoBalEvalTpCode, FnoBalEvalTpCode, char, 1;
	end
	CFOEQ82600OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		조회구분, QryTp, QryTp, char, 1;
		정렬순서구분, StnlnSeqTp, StnlnSeqTp, char, 1;
		선물옵션잔고평가구분코드, FnoBalEvalTpCode, FnoBalEvalTpCode, char, 1;
	end
	CFOEQ82600OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		선물정산차금, FutsAdjstDfamt, FutsAdjstDfamt, long, 16;
		옵션매매손익금액, OptBnsplAmt, OptBnsplAmt, long, 16;
		선물옵션수수료, FnoCmsnAmt, FnoCmsnAmt, long, 16;
		손익합계금액, PnlSumAmt, PnlSumAmt, long, 16;
		입금합계금액, MnyinSumAmt, MnyinSumAmt, long, 16;
		출금합계금액, MnyoutSumAmt, MnyoutSumAmt, long, 16;
		계좌명, AcntNm, AcntNm, char, 40;
	end
	CFOEQ82600OutBlock3,OutList(*EMPTY*),output,occurs;
	begin
		조회일, QryDt, QryDt, char, 8;
		예탁총액, DpstgTotamt, DpstgTotamt, long, 16;
		예탁현금, DpstgMny, DpstgMny, long, 16;
		선물옵션증거금액, FnoMgn, FnoMgn, long, 16;
		선물손익금액, FutsPnlAmt, FutsPnlAmt, long, 16;
		옵션매매손익금액, OptBsnPnlAmt, OptBsnPnlAmt, long, 16;
		옵션평가손익금액, OptEvalPnlAmt, OptEvalPnlAmt, long, 16;
		수수료, CmsnAmt, CmsnAmt, long, 16;
		합계금액1, SumAmt1, SumAmt1, long, 16;
		합계금액, SumAmt2, SumAmt2, long, 16;
		손익합계금액, PnlSumAmt, PnlSumAmt, long, 16;
		선물매수금액, FutsBuyAmt, FutsBuyAmt, long, 16;
		선물매도금액, FutsSellAmt, FutsSellAmt, long, 16;
		옵션매수금액, OptBuyAmt, OptBuyAmt, long, 16;
		옵션매도금액, OptSellAmt, OptSellAmt, long, 16;
		입금액, InAmt, InAmt, long, 16;
		출금액, OutAmt, OutAmt, long, 16;
		평가금액, EvalAmt, EvalAmt, long, 16;
		합산평가금액, AddupEvalAmt, AddupEvalAmt, long, 16;
		금액2, Amt2, Amt2, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
