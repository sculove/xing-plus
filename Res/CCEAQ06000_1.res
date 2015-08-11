BEGIN_FUNCTION_MAP
	.Func,선물옵션 CME 주문체결내역조회,CCEAQ06000,SERVICE=CCEAQ06000,headtype=B,CREATOR=김효종,CREDATE=2012/04/17 17:48:18;
	BEGIN_DATA_MAP
	CCEAQ06000InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		선택입력구분, ChoicInptTpCode, ChoicInptTpCode, char, 1;
		지점번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		선물옵션분류코드, FnoClssCode, FnoClssCode, char, 2;
		상품군코드, PrdgrpCode, PrdgrpCode, char, 2;
		체결구분, PrdtExecTpCode, PrdtExecTpCode, char, 1;
		선물옵션거래유형코드, FnoTrdPtnCode, FnoTrdPtnCode, char, 2;
		시작주문번호2, SrtOrdNo2, SrtOrdNo2, long, 10;
		종료번호, EndNo, EndNo, long, 10;
		정렬순서구분, StnlnSeqTp, StnlnSeqTp, char, 1;
	end
	CCEAQ06000OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		선택입력구분, ChoicInptTpCode, ChoicInptTpCode, char, 1;
		지점번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		선물옵션분류코드, FnoClssCode, FnoClssCode, char, 2;
		상품군코드, PrdgrpCode, PrdgrpCode, char, 2;
		체결구분, PrdtExecTpCode, PrdtExecTpCode, char, 1;
		선물옵션거래유형코드, FnoTrdPtnCode, FnoTrdPtnCode, char, 2;
		시작주문번호2, SrtOrdNo2, SrtOrdNo2, long, 10;
		종료번호, EndNo, EndNo, long, 10;
		정렬순서구분, StnlnSeqTp, StnlnSeqTp, char, 1;
	end
	CCEAQ06000OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		선물주문수량, FutsOrdQty, FutsOrdQty, long, 16;
		선물체결수량, FutsExecQty, FutsExecQty, long, 16;
	end
	CCEAQ06000OutBlock3,Out1(*EMPTY*),output,occurs;
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
		선물옵션호가유형코드, FnoOrdprcPtnCode, FnoOrdprcPtnCode, char, 2;
		선물옵션호가유형명, FnoOrdprcPtnNm, FnoOrdprcPtnNm, char, 40;
		주문가, OrdPrc, OrdPrc, double, 13.2;
		주문수량, OrdQty, OrdQty, long, 16;
		주문구분명, OrdTpNm, OrdTpNm, char, 10;
		체결구분명, ExecTpNm, ExecTpNm, char, 10;
		체결가, ExecPrc, ExecPrc, double, 13.2;
		체결수량, ExecQty, ExecQty, long, 16;
		약정시각, CtrctTime, CtrctTime, char, 9;
		약정번호, CtrctNo, CtrctNo, long, 10;
		체결번호, ExecNo, ExecNo, long, 10;
		매매손익금액, BnsplAmt, BnsplAmt, long, 16;
		미체결수량, UnercQty, UnercQty, long, 16;
		사용자ID, UserId, UserId, char, 16;
		통신매체코드, CommdaCode, CommdaCode, char, 2;
		통신매체코드명, CommdaCodeNm, CommdaCodeNm, char, 40;
		IP주소, IpAddr, IpAddr, char, 16;
		거래유형구분, TrdPtnTpNm, TrdPtnTpNm, char, 20;
		그룹ID, GrpId, GrpId, char, 20;
	end
	END_DATA_MAP
END_FUNCTION_MAP
