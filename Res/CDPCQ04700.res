BEGIN_FUNCTION_MAP
	.Func,계좌 거래내역,CDPCQ04700,SERVICE=CDPCQ04700,headtype=B,CREATOR=류화숙,CREDATE=2012/06/14 10:25:09;
	BEGIN_DATA_MAP
	CDPCQ04700InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		조회구분, QryTp, QryTp, char, 1;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		시작번호, SrtNo, SrtNo, long, 10;
		상품유형코드, PdptnCode, PdptnCode, char, 2;
		종목대분류코드, IsuLgclssCode, IsuLgclssCode, char, 2;
		종목번호, IsuNo, IsuNo, char, 12;
	end
	CDPCQ04700OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		조회구분, QryTp, QryTp, char, 1;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		조회시작일, QrySrtDt, QrySrtDt, char, 8;
		조회종료일, QryEndDt, QryEndDt, char, 8;
		시작번호, SrtNo, SrtNo, long, 10;
		상품유형코드, PdptnCode, PdptnCode, char, 2;
		종목대분류코드, IsuLgclssCode, IsuLgclssCode, char, 2;
		종목번호, IsuNo, IsuNo, char, 12;
	end
	CDPCQ04700OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
	end
	CDPCQ04700OutBlock3,Out2(*EMPTY*),output,occurs;
	begin
		계좌번호, AcntNo, AcntNo, char, 20;
		거래일자, TrdDt, TrdDt, char, 8;
		거래번호, TrdNo, TrdNo, long, 10;
		구분코드명, TpCodeNm, TpCodeNm, char, 50;
		적요번호, SmryNo, SmryNo, char, 4;
		적요명, SmryNm, SmryNm, char, 40;
		취소구분, CancTpNm, CancTpNm, char, 20;
		거래수량, TrdQty, TrdQty, long, 16;
		거래세, Trtax, Trtax, long, 16;
		외화정산금액, FcurrAdjstAmt, FcurrAdjstAmt, double, 25.4;
		정산금액, AdjstAmt, AdjstAmt, long, 16;
		연체합, OvdSum, OvdSum, long, 16;
		예수금전잔금액, DpsBfbalAmt, DpsBfbalAmt, long, 16;
		매도담보상환금, SellPldgRfundAmt, SellPldgRfundAmt, long, 16;
		예탁담보대출전잔금액, DpspdgLoanBfbalAmt, DpspdgLoanBfbalAmt, long, 16;
		거래매체명, TrdmdaNm, TrdmdaNm, char, 40;
		원거래번호, OrgTrdNo, OrgTrdNo, long, 10;
		종목명, IsuNm, IsuNm, char, 40;
		거래단가, TrdUprc, TrdUprc, double, 13.2;
		수수료, CmsnAmt, CmsnAmt, long, 16;
		외화수수료금액, FcurrCmsnAmt, FcurrCmsnAmt, double, 15.2;
		상환차이금액, RfundDiffAmt, RfundDiffAmt, long, 16;
		변제금합계, RepayAmtSum, RepayAmtSum, long, 16;
		유가증권금잔수량, SecCrbalQty, SecCrbalQty, long, 16;
		매도대금담보대출상환이자금액, CslLoanRfundIntrstAmt, CslLoanRfundIntrstAmt, long, 16;
		예탁담보대출금잔금액, DpspdgLoanCrbalAmt, DpspdgLoanCrbalAmt, long, 16;
		처리시각, TrxTime, TrxTime, char, 9;
		출납번호, Inouno, Inouno, long, 10;
		종목번호, IsuNo, IsuNo, char, 12;
		거래금액, TrdAmt, TrdAmt, long, 16;
		수표금액, ChckAmt, ChckAmt, long, 16;
		세금합계금액, TaxSumAmt, TaxSumAmt, long, 16;
		외화세금합계금액, FcurrTaxSumAmt, FcurrTaxSumAmt, double, 26.6;
		이자이용료, IntrstUtlfee, IntrstUtlfee, long, 16;
		배당금액, MnyDvdAmt, MnyDvdAmt, long, 16;
		미수발생금액, RcvblOcrAmt, RcvblOcrAmt, long, 16;
		처리지점번호, TrxBrnNo, TrxBrnNo, char, 3;
		처리지점명, TrxBrnNm, TrxBrnNm, char, 40;
		예탁담보대출금액, DpspdgLoanAmt, DpspdgLoanAmt, long, 16;
		예탁담보대출상환금액, DpspdgLoanRfundAmt, DpspdgLoanRfundAmt, long, 16;
		기준가, BasePrc, BasePrc, double, 13.2;
		예수금금잔금액, DpsCrbalAmt, DpsCrbalAmt, long, 16;
		과표, BoaAmt, BoaAmt, long, 16;
		출금가능금액, MnyoutAbleAmt, MnyoutAbleAmt, long, 16;
		수익증권담보대출발생금, BcrLoanOcrAmt, BcrLoanOcrAmt, long, 16;
		수익증권담보대출전잔금, BcrLoanBfbalAmt, BcrLoanBfbalAmt, long, 16;
		매매기준가, BnsBasePrc, BnsBasePrc, double, 20.10;
		과세기준가, TaxchrBasePrc, TaxchrBasePrc, double, 20.10;
		거래좌수, TrdUnit, TrdUnit, long, 16;
		잔고좌수, BalUnit, BalUnit, long, 16;
		제세금, EvrTax, EvrTax, long, 16;
		평가금액, EvalAmt, EvalAmt, long, 16;
		수익증권담보대출상환금, BcrLoanRfundAmt, BcrLoanRfundAmt, long, 16;
		수익증권담보대출금잔금, BcrLoanCrbalAmt, BcrLoanCrbalAmt, long, 16;
		추가증거금발생총액, AddMgnOcrTotamt, AddMgnOcrTotamt, long, 16;
		추가현금증거금발생금액, AddMnyMgnOcrAmt, AddMnyMgnOcrAmt, long, 16;
		추가증거금납부총액, AddMgnDfryTotamt, AddMgnDfryTotamt, long, 16;
		추가현금증거금납부금액, AddMnyMgnDfryAmt, AddMnyMgnDfryAmt, long, 16;
		매매손익금액, BnsplAmt, BnsplAmt, long, 16;
		소득세, Ictax, Ictax, long, 16;
		주민세, Ihtax, Ihtax, long, 16;
		대출일, LoanDt, LoanDt, char, 8;
		통화코드, CrcyCode, CrcyCode, char, 3;
		외화금액, FcurrAmt, FcurrAmt, double, 24.4;
		외화거래금액, FcurrTrdAmt, FcurrTrdAmt, double, 24.4;
		외화예수금, FcurrDps, FcurrDps, double, 21.4;
		외화예수금전잔금액, FcurrDpsBfbalAmt, FcurrDpsBfbalAmt, double, 21.4;
		상대계좌명, OppAcntNm, OppAcntNm, char, 40;
		상대계좌번호, OppAcntNo, OppAcntNo, char, 20;
		대출상환금액, LoanRfundAmt, LoanRfundAmt, long, 16;
		대출이자금액, LoanIntrstAmt, LoanIntrstAmt, long, 16;
		의뢰인명, AskpsnNm, AskpsnNm, char, 40;
		주문일자, OrdDt, OrdDt, char, 8;
		거래환율, TrdXchrat, TrdXchrat, double, 15.4;
		감면수수료, RdctCmsn, RdctCmsn, double, 21.4;
		외화인지세, FcurrStmpTx, FcurrStmpTx, double, 21.4;
		외화전자금융거래세, FcurrElecfnTrtax, FcurrElecfnTrtax, double, 21.4;
		외화증권거래세, FcstckTrtax, FcstckTrtax, double, 21.4;
	end
	CDPCQ04700OutBlock4,Out3(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		손익합계금액, PnlSumAmt, PnlSumAmt, long, 16;
		약정누계, CtrctAsm, CtrctAsm, long, 16;
		수수료합계금액, CmsnAmtSumAmt, CmsnAmtSumAmt, long, 16;
	end
	CDPCQ04700OutBlock5,Out4(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		입금금액, MnyinAmt, MnyinAmt, long, 16;
		입고금액, SecinAmt, SecinAmt, long, 16;
		출금금액, MnyoutAmt, MnyoutAmt, long, 16;
		출고금액, SecoutAmt, SecoutAmt, long, 16;
		차이금액, DiffAmt, DiffAmt, long, 16;
		차이금액0, DiffAmt0, DiffAmt0, long, 16;
		매도수량, SellQty, SellQty, long, 16;
		매도금액, SellAmt, SellAmt, long, 16;
		매도수수료, SellCmsn, SellCmsn, long, 16;
		제세금, EvrTax, EvrTax, long, 19;
		외화매도정산금액, FcurrSellAdjstAmt, FcurrSellAdjstAmt, double, 25.4;
		매수수량, BuyQty, BuyQty, long, 16;
		매수금액, BuyAmt, BuyAmt, long, 16;
		매수수수료, BuyCmsn, BuyCmsn, long, 16;
		체결세금, ExecTax, ExecTax, long, 16;
		외화매수정산금액, FcurrBuyAdjstAmt, FcurrBuyAdjstAmt, double, 25.4;
	end
	END_DATA_MAP
END_FUNCTION_MAP
