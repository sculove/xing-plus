BEGIN_FUNCTION_MAP
	.Func,선물옵션 CME 예탁금증거금조회,CCEBQ10500,SERVICE=CCEBQ10500,headtype=B,CREATOR=김승환,CREDATE=2012/04/16 18:02:19;
	BEGIN_DATA_MAP
	CCEBQ10500InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
	end
	CCEBQ10500OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
	end
	CCEBQ10500OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		예탁금총액, DpsamtTotamt, DpsamtTotamt, long, 16;
		예수금, Dps, Dps, long, 16;
		대용금액, SubstAmt, SubstAmt, long, 16;
		충당예탁금총액, FilupDpsamtTotamt, FilupDpsamtTotamt, long, 16;
		충당예수금, FilupDps, FilupDps, long, 16;
		선물손익금액, FutsPnlAmt, FutsPnlAmt, long, 16;
		인출가능금액, WthdwAbleAmt, WthdwAbleAmt, long, 16;
		인출가능현금액, PsnOutAbleCurAmt, PsnOutAbleCurAmt, long, 16;
		인출가능대용금액, PsnOutAbleSubstAmt, PsnOutAbleSubstAmt, long, 16;
		증거금액, Mgn, Mgn, long, 16;
		현금증거금액, MnyMgn, MnyMgn, long, 16;
		주문가능금액, OrdAbleAmt, OrdAbleAmt, long, 16;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		추가증거금액, AddMgn, AddMgn, long, 16;
		현금추가증거금액, MnyAddMgn, MnyAddMgn, long, 16;
		금전일수표입금액, AmtPrdayChckInAmt, AmtPrdayChckInAmt, long, 16;
		선물옵션전일대용매도금액, FnoPrdaySubstSellAmt, FnoPrdaySubstSellAmt, long, 16;
		선물옵션금일대용매도금액, FnoCrdaySubstSellAmt, FnoCrdaySubstSellAmt, long, 16;
		선물옵션전일가입금액, FnoPrdayFdamt, FnoPrdayFdamt, long, 16;
		선물옵션금일가입금액, FnoCrdayFdamt, FnoCrdayFdamt, long, 16;
		외화대용금액, FcurrSubstAmt, FcurrSubstAmt, long, 16;
		선물옵션계좌사후증거금명, FnoAcntAfmgnNm, FnoAcntAfmgnNm, char, 20;
	end
	CCEBQ10500OutBlock3,Out2(*EMPTY*),output,occurs;
	begin
		상품군코드명, PdGrpCodeNm, PdGrpCodeNm, char, 20;
		순위험증거금액, NetRiskMgn, NetRiskMgn, long, 16;
		가격증거금액, PrcMgn, PrcMgn, long, 16;
		스프레드증거금액, SprdMgn, SprdMgn, long, 16;
		가격변동증거금액, PrcFlctMgn, PrcFlctMgn, long, 16;
		최소증거금액, MinMgn, MinMgn, long, 16;
		주문증거금액, OrdMgn, OrdMgn, long, 16;
		옵션순매수금액, OptNetBuyAmt, OptNetBuyAmt, long, 16;
		위탁증거금액, CsgnMgn, CsgnMgn, long, 16;
		유지증거금액, MaintMgn, MaintMgn, long, 16;
		선물매수체결금액, FutsBuyExecAmt, FutsBuyExecAmt, long, 16;
		선물매도체결금액, FutsSellExecAmt, FutsSellExecAmt, long, 16;
		옵션매수체결금액, OptBuyExecAmt, OptBuyExecAmt, long, 16;
		옵션매도체결금액, OptSellExecAmt, OptSellExecAmt, long, 16;
		선물손익금액, FutsPnlAmt, FutsPnlAmt, long, 16;
		총위험위탁증거금, TotRiskCsgnMgn, TotRiskCsgnMgn, long, 16;
		인수도위탁증거금, UndCsgnMgn, UndCsgnMgn, long, 16;
		증거금감면금액, MgnRdctAmt, MgnRdctAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
