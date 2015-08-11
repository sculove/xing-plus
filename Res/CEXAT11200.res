BEGIN_FUNCTION_MAP
	.Func,유렉스 정정주문,CEXAT11200,SERVICE=CEXAT11200,headtype=B,CREATOR=이시종,CREDATE=2012/06/27 21:27:10;
	BEGIN_DATA_MAP
	CEXAT11200InBlock1,In(*EMPTY*),input;
	begin
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
	end
	CEXAT11200OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		매매구분코드, BnsTpCode, BnsTpCode, char, 1;
		유렉스가격조건구분코드, ErxPrcCndiTpCode, ErxPrcCndiTpCode, char, 1;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
		정정수량, MdfyQty, MdfyQty, long, 16;
		주문조건가격, OrdCndiPrc, OrdCndiPrc, double, 25.8;
		통신매체코드, CommdaCode, CommdaCode, char, 2;
	end
	CEXAT11200OutBlock2,Out(*EMPTY*),output;
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
