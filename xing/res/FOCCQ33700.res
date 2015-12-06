BEGIN_FUNCTION_MAP
	.Func,선물옵션 기간별 계좌 수익률 현황,FOCCQ33700,SERVICE=FOCCQ33700,headtype=B,CREATOR=이석희,CREDATE=2013/01/08 10:45:28;
	BEGIN_DATA_MAP
	FOCCQ33700InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		조회구분, QryTp, QryTp, char, 1;
		기준금액구분, BaseAmtTp, BaseAmtTp, char, 1;
		조회기간구분, QryTermTp, QryTermTp, char, 1;
		손익산출구분코드, PnlCalcTpCode, PnlCalcTpCode, char, 1;
	end
	FOCCQ33700OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		조회구분, QryTp, QryTp, char, 1;
		기준금액구분, BaseAmtTp, BaseAmtTp, char, 1;
		조회기간구분, QryTermTp, QryTermTp, char, 1;
		손익산출구분코드, PnlCalcTpCode, PnlCalcTpCode, char, 1;
	end
	FOCCQ33700OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		입금액, InAmt, InAmt, long, 16;
		출금액, OutAmt, OutAmt, long, 16;
		선물옵션약정금액, FnoCtrctAmt, FnoCtrctAmt, long, 16;
		투자원금평잔금액, InvstPramtAvrbalAmt, InvstPramtAvrbalAmt, long, 16;
		선물정산차금, FutsAdjstDfamt, FutsAdjstDfamt, long, 16;
		옵션매매손익금액, OptBsnPnlAmt, OptBsnPnlAmt, long, 16;
		옵션평가손익금액, OptEvalPnlAmt, OptEvalPnlAmt, long, 16;
		투자손익금액, InvstPlAmt, InvstPlAmt, long, 16;
		수익률, ErnRat, ErnRat, double, 12.6;
	end
	FOCCQ33700OutBlock3,OutList(*EMPTY*),output,occurs;
	begin
		거래일, TrdDt, TrdDt, char, 8;
		기초예탁자산금액, FdDpsastAmt, FdDpsastAmt, long, 16;
		기말예탁자산금액, EotDpsastAmt, EotDpsastAmt, long, 16;
		입금액, InAmt, InAmt, long, 16;
		출금액, OutAmt, OutAmt, long, 16;
		투자원금평잔금액, InvstAvrbalPramt, InvstAvrbalPramt, long, 16;
		투자손익금액, InvstPlAmt, InvstPlAmt, long, 16;
		수익률, Ernrat, Ernrat, double, 12.6;
		선물옵션약정금액, FnoCtrctAmt, FnoCtrctAmt, long, 16;
		회전율, Trnrat, Trnrat, double, 12.6;
		선물정산차금, FutsAdjstDfamt, FutsAdjstDfamt, long, 16;
		옵션매매손익금액, OptBsnPnlAmt, OptBsnPnlAmt, long, 16;
		옵션평가손익금액, OptEvalPnlAmt, OptEvalPnlAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
