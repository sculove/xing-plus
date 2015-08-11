BEGIN_FUNCTION_MAP
	.Func,CME 정정주문,CCEAT00200,SERVICE=CCEAT00200,headtype=B,CREATOR=이호섭,CREDATE=2012/04/10 10:07:08;
	BEGIN_DATA_MAP
	CCEAT00200InBlock1,In(*EMPTY*),input;
	begin
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		선물옵션호가유형코드, FnoOrdprcPtnCode, FnoOrdprcPtnCode, char, 2;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
		정정수량, MdfyQty, MdfyQty, long, 16;
	end
	CCEAT00200OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		주문시장코드, OrdMktCode, OrdMktCode, char, 2;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		선물옵션주문유형코드, FnoOrdPtnCode, FnoOrdPtnCode, char, 2;
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		선물옵션호가유형코드, FnoOrdprcPtnCode, FnoOrdprcPtnCode, char, 2;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
		정정수량, MdfyQty, MdfyQty, long, 16;
		통신매체코드, CommdaCode, CommdaCode, char, 2;
		협의매매완료시각, DscusBnsCmpltTime, DscusBnsCmpltTime, char, 9;
		그룹ID, GrpId, GrpId, char, 20;
		주문일련번호, OrdSeqno, OrdSeqno, long, 10;
		포트폴리오번호, PtflNo, PtflNo, long, 10;
		바스켓번호, BskNo, BskNo, long, 10;
		트렌치번호, TrchNo, TrchNo, long, 10;
		아이템번호, ItemNo, ItemNo, long, 10;
		관리사원번호, MgempNo, MgempNo, char, 9;
		펀드ID, FundId, FundId, char, 12;
		펀드원주문번호, FundOrgOrdNo, FundOrgOrdNo, long, 10;
		펀드주문번호, FundOrdNo, FundOrdNo, long, 10;
	end
	CCEAT00200OutBlock2,Out(*EMPTY*),output;
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
