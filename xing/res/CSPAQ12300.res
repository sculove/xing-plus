BEGIN_FUNCTION_MAP
	.Func,BEP단가조회,CSPAQ12300,SERVICE=CSPAQ12300,headtype=B,CREATOR=이상은,CREDATE=2015/04/13 08:43:20;
	BEGIN_DATA_MAP
	CSPAQ12300InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		잔고생성구분, BalCreTp, BalCreTp, char, 1;
		수수료적용구분, CmsnAppTpCode, CmsnAppTpCode, char, 1;
		D2잔고기준조회구분, D2balBaseQryTp, D2balBaseQryTp, char, 1;
		단가구분, UprcTpCode, UprcTpCode, char, 1;
	end
	CSPAQ12300OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		잔고생성구분, BalCreTp, BalCreTp, char, 1;
		수수료적용구분, CmsnAppTpCode, CmsnAppTpCode, char, 1;
		D2잔고기준조회구분, D2balBaseQryTp, D2balBaseQryTp, char, 1;
		단가구분, UprcTpCode, UprcTpCode, char, 1;
	end
	CSPAQ12300OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		지점명, BrnNm, BrnNm, char, 40;
		계좌명, AcntNm, AcntNm, char, 40;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		출금가능금액, MnyoutAbleAmt, MnyoutAbleAmt, long, 16;
		거래소금액, SeOrdAbleAmt, SeOrdAbleAmt, long, 16;
		코스닥금액, KdqOrdAbleAmt, KdqOrdAbleAmt, long, 16;
		HTS주문가능금액, HtsOrdAbleAmt, HtsOrdAbleAmt, long, 16;
		증거금률100퍼센트주문가능금액, MgnRat100pctOrdAbleAmt, MgnRat100pctOrdAbleAmt, long, 16;
		잔고평가금액, BalEvalAmt, BalEvalAmt, long, 16;
		매입금액, PchsAmt, PchsAmt, long, 16;
		미수금액, RcvblAmt, RcvblAmt, long, 16;
		손익율, PnlRat, PnlRat, double, 18.6;
		투자원금, InvstOrgAmt, InvstOrgAmt, long, 20;
		투자손익금액, InvstPlAmt, InvstPlAmt, long, 16;
		신용담보주문금액, CrdtPldgOrdAmt, CrdtPldgOrdAmt, long, 16;
		예수금, Dps, Dps, long, 16;
		D1예수금, D1Dps, D1Dps, long, 16;
		D2예수금, D2Dps, D2Dps, long, 16;
		주문일, OrdDt, OrdDt, char, 8;
		현금증거금액, MnyMgn, MnyMgn, long, 16;
		대용증거금액, SubstMgn, SubstMgn, long, 16;
		대용금액, SubstAmt, SubstAmt, long, 16;
		전일매수체결금액, PrdayBuyExecAmt, PrdayBuyExecAmt, long, 16;
		전일매도체결금액, PrdaySellExecAmt, PrdaySellExecAmt, long, 16;
		금일매수체결금액, CrdayBuyExecAmt, CrdayBuyExecAmt, long, 16;
		금일매도체결금액, CrdaySellExecAmt, CrdaySellExecAmt, long, 16;
		평가손익합계, EvalPnlSum, EvalPnlSum, long, 15;
		예탁자산총액, DpsastTotamt, DpsastTotamt, long, 16;
		제비용, Evrprc, Evrprc, long, 19;
		재사용금액, RuseAmt, RuseAmt, long, 16;
		기타대여금액, EtclndAmt, EtclndAmt, long, 16;
		가정산금액, PrcAdjstAmt, PrcAdjstAmt, long, 16;
		D1수수료, D1CmsnAmt, D1CmsnAmt, long, 16;
		D2수수료, D2CmsnAmt, D2CmsnAmt, long, 16;
		D1제세금, D1EvrTax, D1EvrTax, long, 16;
		D2제세금, D2EvrTax, D2EvrTax, long, 16;
		D1결제예정금액, D1SettPrergAmt, D1SettPrergAmt, long, 16;
		D2결제예정금액, D2SettPrergAmt, D2SettPrergAmt, long, 16;
		전일KSE현금증거금, PrdayKseMnyMgn, PrdayKseMnyMgn, long, 16;
		전일KSE대용증거금, PrdayKseSubstMgn, PrdayKseSubstMgn, long, 16;
		전일KSE신용현금증거금, PrdayKseCrdtMnyMgn, PrdayKseCrdtMnyMgn, long, 16;
		전일KSE신용대용증거금, PrdayKseCrdtSubstMgn, PrdayKseCrdtSubstMgn, long, 16;
		금일KSE현금증거금, CrdayKseMnyMgn, CrdayKseMnyMgn, long, 16;
		금일KSE대용증거금, CrdayKseSubstMgn, CrdayKseSubstMgn, long, 16;
		금일KSE신용현금증거금, CrdayKseCrdtMnyMgn, CrdayKseCrdtMnyMgn, long, 16;
		금일KSE신용대용증거금, CrdayKseCrdtSubstMgn, CrdayKseCrdtSubstMgn, long, 16;
		전일코스닥현금증거금, PrdayKdqMnyMgn, PrdayKdqMnyMgn, long, 16;
		전일코스닥대용증거금, PrdayKdqSubstMgn, PrdayKdqSubstMgn, long, 16;
		전일코스닥신용현금증거금, PrdayKdqCrdtMnyMgn, PrdayKdqCrdtMnyMgn, long, 16;
		전일코스닥신용대용증거금, PrdayKdqCrdtSubstMgn, PrdayKdqCrdtSubstMgn, long, 16;
		금일코스닥현금증거금, CrdayKdqMnyMgn, CrdayKdqMnyMgn, long, 16;
		금일코스닥대용증거금, CrdayKdqSubstMgn, CrdayKdqSubstMgn, long, 16;
		금일코스닥신용현금증거금, CrdayKdqCrdtMnyMgn, CrdayKdqCrdtMnyMgn, long, 16;
		금일코스닥신용대용증거금, CrdayKdqCrdtSubstMgn, CrdayKdqCrdtSubstMgn, long, 16;
		전일프리보드현금증거금, PrdayFrbrdMnyMgn, PrdayFrbrdMnyMgn, long, 16;
		전일프리보드대용증거금, PrdayFrbrdSubstMgn, PrdayFrbrdSubstMgn, long, 16;
		금일프리보드현금증거금, CrdayFrbrdMnyMgn, CrdayFrbrdMnyMgn, long, 16;
		금일프리보드대용증거금, CrdayFrbrdSubstMgn, CrdayFrbrdSubstMgn, long, 16;
		전일장외현금증거금, PrdayCrbmkMnyMgn, PrdayCrbmkMnyMgn, long, 16;
		전일장외대용증거금, PrdayCrbmkSubstMgn, PrdayCrbmkSubstMgn, long, 16;
		금일장외현금증거금, CrdayCrbmkMnyMgn, CrdayCrbmkMnyMgn, long, 16;
		금일장외대용증거금, CrdayCrbmkSubstMgn, CrdayCrbmkSubstMgn, long, 16;
		예탁담보수량, DpspdgQty, DpspdgQty, long, 16;
		매수정산금(D+2), BuyAdjstAmtD2, BuyAdjstAmtD2, long, 16;
		매도정산금(D+2), SellAdjstAmtD2, SellAdjstAmtD2, long, 16;
		변제소요금(D+1), RepayRqrdAmtD1, RepayRqrdAmtD1, long, 16;
		변제소요금(D+2), RepayRqrdAmtD2, RepayRqrdAmtD2, long, 16;
		대출금액, LoanAmt, LoanAmt, long, 16;
	end
	CSPAQ12300OutBlock3,ST_OUT(*EMPTY*),output,occurs;
	begin
		종목번호, IsuNo, IsuNo, char, 12;
		종목명, IsuNm, IsuNm, char, 40;
		유가증권잔고유형코드, SecBalPtnCode, SecBalPtnCode, char, 2;
		유가증권잔고유형명, SecBalPtnNm, SecBalPtnNm, char, 40;
		잔고수량, BalQty, BalQty, long, 16;
		매매기준잔고수량, BnsBaseBalQty, BnsBaseBalQty, long, 16;
		금일매수체결수량, CrdayBuyExecQty, CrdayBuyExecQty, long, 16;
		금일매도체결수량, CrdaySellExecQty, CrdaySellExecQty, long, 16;
		매도가, SellPrc, SellPrc, double, 21.4;
		매수가, BuyPrc, BuyPrc, double, 21.4;
		매도손익금액, SellPnlAmt, SellPnlAmt, long, 16;
		손익율, PnlRat, PnlRat, double, 18.6;
		현재가, NowPrc, NowPrc, double, 15.2;
		신용금액, CrdtAmt, CrdtAmt, long, 16;
		만기일, DueDt, DueDt, char, 8;
		전일매도체결가, PrdaySellExecPrc, PrdaySellExecPrc, double, 13.2;
		전일매도수량, PrdaySellQty, PrdaySellQty, long, 16;
		전일매수체결가, PrdayBuyExecPrc, PrdayBuyExecPrc, double, 13.2;
		전일매수수량, PrdayBuyQty, PrdayBuyQty, long, 16;
		대출일, LoanDt, LoanDt, char, 8;
		평균단가, AvrUprc, AvrUprc, double, 13.2;
		매도가능수량, SellAbleQty, SellAbleQty, long, 16;
		매도주문수량, SellOrdQty, SellOrdQty, long, 16;
		금일매수체결금액, CrdayBuyExecAmt, CrdayBuyExecAmt, long, 16;
		금일매도체결금액, CrdaySellExecAmt, CrdaySellExecAmt, long, 16;
		전일매수체결금액, PrdayBuyExecAmt, PrdayBuyExecAmt, long, 16;
		전일매도체결금액, PrdaySellExecAmt, PrdaySellExecAmt, long, 16;
		잔고평가금액, BalEvalAmt, BalEvalAmt, long, 16;
		평가손익, EvalPnl, EvalPnl, long, 16;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		주문가능금액, OrdAbleAmt, OrdAbleAmt, long, 16;
		매도미체결수량, SellUnercQty, SellUnercQty, long, 16;
		매도미결제수량, SellUnsttQty, SellUnsttQty, long, 16;
		매수미체결수량, BuyUnercQty, BuyUnercQty, long, 16;
		매수미결제수량, BuyUnsttQty, BuyUnsttQty, long, 16;
		미결제수량, UnsttQty, UnsttQty, long, 16;
		미체결수량, UnercQty, UnercQty, long, 16;
		전일종가, PrdayCprc, PrdayCprc, double, 15.2;
		매입금액, PchsAmt, PchsAmt, long, 16;
		등록시장코드, RegMktCode, RegMktCode, char, 2;
		대출상세분류코드, LoanDtlClssCode, LoanDtlClssCode, char, 2;
		예탁담보대출수량, DpspdgLoanQty, DpspdgLoanQty, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
