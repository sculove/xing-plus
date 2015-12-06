BEGIN_FUNCTION_MAP
	.Func,선물옵션 정상주문,CFOAT00100,SERVICE=CFOAT00100,ENCRYPT,SIGNATURE,headtype=B,CREATOR=이인희,CREDATE=2012/03/12 13:31:10;
	BEGIN_DATA_MAP
	CFOAT00100InBlock1,In(*EMPTY*),input;
	begin
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		선물옵션호가유형코드, FnoOrdprcPtnCode, FnoOrdprcPtnCode, char, 2;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
		주문수량, OrdQty, OrdQty, long, 16;
	end
	CFOAT00100OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		주문시장코드, OrdMktCode, OrdMktCode, char, 2;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		선물옵션종목번호, FnoIsuNo, FnoIsuNo, char, 12;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		선물옵션주문유형코드, FnoOrdPtnCode, FnoOrdPtnCode, char, 2;
		선물옵션호가유형코드, FnoOrdprcPtnCode, FnoOrdprcPtnCode, char, 2;
		선물옵션거래유형코드, FnoTrdPtnCode, FnoTrdPtnCode, char, 2;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
		주문수량, OrdQty, OrdQty, long, 16;
		통신매체코드, CommdaCode, CommdaCode, char, 2;
		협의매매완료시각, DscusBnsCmpltTime, DscusBnsCmpltTime, char, 9;
		그룹ID, GrpId, GrpId, char, 20;
		주문일련번호, OrdSeqno, OrdSeqno, long, 10;
		포트폴리오번호, PtflNo, PtflNo, long, 10;
		바스켓번호, BskNo, BskNo, long, 10;
		트렌치번호, TrchNo, TrchNo, long, 10;
		항목번호, ItemNo, ItemNo, long, 16;
		운용지시번호, OpDrtnNo, OpDrtnNo, char, 12;
		관리사원번호, MgempNo, MgempNo, char, 9;
		펀드ID, FundId, FundId, char, 12;
		펀드주문번호, FundOrdNo, FundOrdNo, long, 10;
	end
	CFOAT00100OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		주문번호, OrdNo, OrdNo, long, 10;
		지점명, BrnNm, BrnNm, char, 40;
		계좌명, AcntNm, AcntNm, char, 40;
		종목명, IsuNm, IsuNm, char, 50;
		주문가능금액, OrdAbleAmt, OrdAbleAmt, long, 16;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		주문증거금, OrdMgn, OrdMgn, long, 16;
		현금주문증거금, MnyOrdMgn, MnyOrdMgn, long, 16;
		주문가능수량, OrdAbleQty, OrdAbleQty, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
CFOAT00100