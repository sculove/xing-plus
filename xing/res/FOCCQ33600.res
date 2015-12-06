BEGIN_FUNCTION_MAP
	.Func,주식계좌 기간별수익률 상세,FOCCQ33600,SERVICE=FOCCQ33600,headtype=B,CREATOR=유종우,CREDATE=2012/03/15 11:06:33;
	BEGIN_DATA_MAP
	FOCCQ33600InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		기간구분, TermTp, TermTp, char, 1;
	end
	FOCCQ33600OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		기간구분, TermTp, TermTp, char, 1;
	end
	FOCCQ33600OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		매매약정금액, BnsctrAmt, BnsctrAmt, long, 16;
		입금금액, MnyinAmt, MnyinAmt, long, 16;
		출금금액, MnyoutAmt, MnyoutAmt, long, 16;
		투자원금평잔금액, InvstAvrbalPramt, InvstAvrbalPramt, long, 16;
		투자손익금액, InvstPlAmt, InvstPlAmt, long, 16;
		투자수익률, InvstErnrat, InvstErnrat, double, 9.2;
	end
	FOCCQ33600OutBlock3,OutLst(*EMPTY*),output,occurs;
	begin
		기준일, BaseDt, BaseDt, char, 8;
		기초평가금액, FdEvalAmt, FdEvalAmt, long, 19;
		기말평가금액, EotEvalAmt, EotEvalAmt, long, 19;
		투자원금평잔금액, InvstAvrbalPramt, InvstAvrbalPramt, long, 16;
		매매약정금액, BnsctrAmt, BnsctrAmt, long, 16;
		입금고액, MnyinSecinAmt, MnyinSecinAmt, long, 16;
		출금고액, MnyoutSecoutAmt, MnyoutSecoutAmt, long, 16;
		평가손익금액, EvalPnlAmt, EvalPnlAmt, long, 16;
		기간수익률, TermErnrat, TermErnrat, double, 11.3;
		지수, Idx, Idx, double, 13.2;
	end
	END_DATA_MAP
END_FUNCTION_MAP
