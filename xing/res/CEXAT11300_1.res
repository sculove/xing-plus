BEGIN_FUNCTION_MAP
	.Func,유렉스 취소주문,CEXAT11300,SERVICE=CEXAT11300,headtype=B,CREATOR=이시종,CREDATE=2012/06/27 21:31:41;
	BEGIN_DATA_MAP
	CEXAT11300InBlock1,In(*EMPTY*),input;
	begin
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
	end
	CEXAT11300OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		취소수량, CancQty, CancQty, long, 16;
		통신매체코드, CommdaCode, CommdaCode, char, 2;
	end
	CEXAT11300OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		주문번호, OrdNo, OrdNo, long, 10;
		지점명, BrnNm, BrnNm, char, 40;
		계좌명, AcntNm, AcntNm, char, 40;
		종목명, IsuNm, IsuNm, char, 50;
		주문가능금액, OrdAbleAmt, OrdAbleAmt, long, 16;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		주문증거금액, OrdMgn, OrdMgn, long, 16;
		현금주문증거금액, MnyOrdMgn, MnyOrdMgn, long, 16;
		주문가능수량, OrdAbleQty, OrdAbleQty, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
