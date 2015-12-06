BEGIN_FUNCTION_MAP
	.Func,선물옵션 CME 매매거래현황,CCEAQ01100,SERVICE=CCEAQ01100,headtype=B,CREATOR=이유리,CREDATE=2013/07/19 11:07:15;
	BEGIN_DATA_MAP
	CCEAQ01100InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		정렬순서구분, StnlnSeqTp, StnlnSeqTp, char, 1;
	end
	CCEAQ01100OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		정렬순서구분, StnlnSeqTp, StnlnSeqTp, char, 1;
	end
	CCEAQ01100OutBlock2,Sum(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		매매손익금액, BnsplAmt, BnsplAmt, long, 16;
		선물옵션약정금액, FnoCtrctAmt, FnoCtrctAmt, long, 16;
		수수료합계금액, CmsnAmtSumAmt, CmsnAmtSumAmt, long, 16;
	end
	CCEAQ01100OutBlock3,Out(*EMPTY*),output,occurs;
	begin
		매매일, BnsDt, BnsDt, char, 8;
		주문번호, OrdNo, OrdNo, long, 10;
		약정번호, CtrctNo, CtrctNo, long, 10;
		체결번호, ExecNo, ExecNo, long, 10;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		종목명, IsuNm, IsuNm, char, 40;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		매매구분, BnsTpNm, BnsTpNm, char, 10;
		당초약정지수체결가, BgnCtrctIdxExecPrc, BgnCtrctIdxExecPrc, double, 13.2;
		당초금액, BgnAmt, BgnAmt, long, 16;
		약정수량, CtrctQty, CtrctQty, long, 16;
		체결가, ExecPrc, ExecPrc, double, 13.2;
		약정금액, CtrctAmt, CtrctAmt, long, 16;
		수수료금액, CmsnAmt, CmsnAmt, long, 16;
		매매손익금액, BnsplAmt, BnsplAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
