BEGIN_FUNCTION_MAP
	.Func,계좌별신용한도조회,CSPAQ00600,SERVICE=CSPAQ00600,headtype=B,CREATOR=박형준,CREDATE=2011/12/01 15:40:38;
	BEGIN_DATA_MAP
	CSPAQ00600InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		대출상세분류코드, LoanDtlClssCode, LoanDtlClssCode, char, 2;
		종목번호, IsuNo, IsuNo, char, 12;
		주문가, OrdPrc, OrdPrc, double, 13.2;
	end
	CSPAQ00600OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		대출상세분류코드, LoanDtlClssCode, LoanDtlClssCode, char, 2;
		종목번호, IsuNo, IsuNo, char, 12;
		주문가, OrdPrc, OrdPrc, double, 13.2;
	end
	CSPAQ00600OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		주문가, OrdPrc, OrdPrc, double, 13.2;
		대주한도, SloanLmtAmt, SloanLmtAmt, long, 16;
		대주금액합계, SloanAmtSum, SloanAmtSum, long, 16;
		대주신규금액, SloanNewAmt, SloanNewAmt, long, 16;
		대주상환금액, SloanRfundAmt, SloanRfundAmt, long, 16;
		유통융자한도금액, MktcplMloanLmtAmt, MktcplMloanLmtAmt, long, 16;
		유통융자금액합계, MktcplMloanAmtSum, MktcplMloanAmtSum, long, 16;
		유통융자신규금액, MktcplMloanNewAmt, MktcplMloanNewAmt, long, 16;
		유통융자상환금액, MktcplMloanRfundAmt, MktcplMloanRfundAmt, long, 16;
		자기융자한도금액, SfaccMloanLmtAmt, SfaccMloanLmtAmt, long, 16;
		자기융자금액합계, SfaccMloanAmtSum, SfaccMloanAmtSum, long, 16;
		자기융자신규금액, SfaccMloanNewAmt, SfaccMloanNewAmt, long, 16;
		자기융자상환금액, SfaccMloanRfundAmt, SfaccMloanRfundAmt, long, 16;
		지점유통융자한도금액, BrnMktcplMloanLmtAmt, BrnMktcplMloanLmtAmt, long, 16;
		지점유통융자신규금액, BrnMktcplMloanNewAmt, BrnMktcplMloanNewAmt, long, 16;
		지점유통융자상환금액, BrnMktcplMloanRfundAmt, BrnMktcplMloanRfundAmt, long, 16;
		지점유통융자사용금액, BrnMktcplMloanUseAmt, BrnMktcplMloanUseAmt, long, 16;
		지점자기융자한도금액, BrnSfaccMloanLmtAmt, BrnSfaccMloanLmtAmt, long, 16;
		지점자기융자신규금액, BrnSfaccMloanNewAmt, BrnSfaccMloanNewAmt, long, 16;
		지점자기융자상환금액, BrnSfaccMloanRfundAmt, BrnSfaccMloanRfundAmt, long, 16;
		지점자기융자사용금액, BrnSfaccMloanUseAmt, BrnSfaccMloanUseAmt, long, 16;
		이용사융자한도관리여부, FirmMloanLmtMgmtYn, FirmMloanLmtMgmtYn, char, 1;
		이용사신용종목제한구분, FirmCrdtIsuRestrcTp, FirmCrdtIsuRestrcTp, char, 1;
		담보유지비율, PldgMaintRat, PldgMaintRat, double, 7.4;
		이용사명, FirmNm, FirmNm, char, 50;
		담보비율, PldgRat, PldgRat, double, 7.4;
		예탁자산합계, DpsastSum, DpsastSum, long, 17;
		한도변경가능금액, LmtChgAbleAmt, LmtChgAbleAmt, long, 16;
		주문가능금액, OrdAbleAmt, OrdAbleAmt, long, 16;
		주문가능수량, OrdAbleQty, OrdAbleQty, long, 16;
		미수불가주문가능수량, RcvblUablOrdAbleQty, RcvblUablOrdAbleQty, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
