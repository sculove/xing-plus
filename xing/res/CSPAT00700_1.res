BEGIN_FUNCTION_MAP
	.Func,현물정정주문,CSPAT00700,SERVICE=CSPAT00700,ENCRYPT,SIGNATURE,headtype=B,CREATOR=김기종,CREDATE=2011/12/07 09:23:43;
	BEGIN_DATA_MAP
	CSPAT00700InBlock1,In(*EMPTY*),input;
	begin
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		종목번호, IsuNo, IsuNo, char, 12;
		주문수량, OrdQty, OrdQty, long, 16;
		호가유형코드, OrdprcPtnCode, OrdprcPtnCode, char, 2;
		주문조건구분, OrdCndiTpCode, OrdCndiTpCode, char, 1;
		주문가, OrdPrc, OrdPrc, double, 13.2;
	end
	CSPAT00700OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		원주문번호, OrgOrdNo, OrgOrdNo, long, 10;
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		종목번호, IsuNo, IsuNo, char, 12;
		주문수량, OrdQty, OrdQty, long, 16;
		호가유형코드, OrdprcPtnCode, OrdprcPtnCode, char, 2;
		주문조건구분, OrdCndiTpCode, OrdCndiTpCode, char, 1;
		주문가, OrdPrc, OrdPrc, double, 13.2;
		통신매체코드, CommdaCode, CommdaCode, char, 2;
		전략코드, StrtgCode, StrtgCode, char, 6;
		그룹ID, GrpId, GrpId, char, 20;
		주문회차, OrdSeqNo, OrdSeqNo, long, 10;
		포트폴리오번호, PtflNo, PtflNo, long, 10;
		바스켓번호, BskNo, BskNo, long, 10;
		트렌치번호, TrchNo, TrchNo, long, 10;
		아이템번호, ItemNo, ItemNo, long, 10;
	end
	CSPAT00700OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		주문번호, OrdNo, OrdNo, long, 10;
		모주문번호, PrntOrdNo, PrntOrdNo, long, 10;
		주문시각, OrdTime, OrdTime, char, 9;
		주문시장코드, OrdMktCode, OrdMktCode, char, 2;
		주문유형코드, OrdPtnCode, OrdPtnCode, char, 2;
		단축종목번호, ShtnIsuNo, ShtnIsuNo, char, 9;
		프로그램호가유형코드, PrgmOrdprcPtnCode, PrgmOrdprcPtnCode, char, 2;
		공매도호가구분, StslOrdprcTpCode, StslOrdprcTpCode, char, 1;
		공매도가능여부, StslAbleYn, StslAbleYn, char, 1;
		신용거래코드, MgntrnCode, MgntrnCode, char, 3;
		대출일, LoanDt, LoanDt, char, 8;
		반대매매주문구분, CvrgOrdTp, CvrgOrdTp, char, 1;
		유동성공급자여부, LpYn, LpYn, char, 1;
		관리사원번호, MgempNo, MgempNo, char, 9;
		주문금액, OrdAmt, OrdAmt, long, 16;
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		예비주문번호, SpareOrdNo, SpareOrdNo, long, 10;
		반대매매일련번호, CvrgSeqno, CvrgSeqno, long, 10;
		예약주문번호, RsvOrdNo, RsvOrdNo, long, 10;
		현금주문금액, MnyOrdAmt, MnyOrdAmt, long, 16;
		대용주문금액, SubstOrdAmt, SubstOrdAmt, long, 16;
		재사용주문금액, RuseOrdAmt, RuseOrdAmt, long, 16;
		계좌명, AcntNm, AcntNm, char, 40;
		종목명, IsuNm, IsuNm, char, 40;
	end
	END_DATA_MAP
END_FUNCTION_MAP
CSPAT00700