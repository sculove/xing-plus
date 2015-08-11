BEGIN_FUNCTION_MAP
	.Func,선물옵션가정산예탁금상세,CFOEQ11100,SERVICE=CFOEQ11100,headtype=B,CREATOR=김정현,CREDATE=2012/03/16 14:04:41;
	BEGIN_DATA_MAP
	CFOEQ11100InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		매매일, BnsDt, BnsDt, char, 8;
	end
	CFOEQ11100OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		매매일, BnsDt, BnsDt, char, 8;
	end
	CFOEQ11100OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		개장시예탁금총액, OpnmkDpsamtTotamt, OpnmkDpsamtTotamt, long, 16;
		개장시예수금, OpnmkDps, OpnmkDps, long, 16;
		개장시현금미수금, OpnmkMnyrclAmt, OpnmkMnyrclAmt, long, 16;
		개장시대용금액, OpnmkSubstAmt, OpnmkSubstAmt, long, 16;
		총금액, TotAmt, TotAmt, long, 16;
		예수금, Dps, Dps, long, 16;
		현금미수금액, MnyrclAmt, MnyrclAmt, long, 16;
		대용지정금액, SubstDsgnAmt, SubstDsgnAmt, long, 16;
		위탁증거금액, CsgnMgn, CsgnMgn, long, 16;
		현금위탁증거금액, MnyCsgnMgn, MnyCsgnMgn, long, 16;
		유지증거금액, MaintMgn, MaintMgn, long, 16;
		현금유지증거금액, MnyMaintMgn, MnyMaintMgn, long, 16;
		출금가능총액, OutAbleAmt, OutAbleAmt, long, 16;
		출금가능금액, MnyoutAbleAmt, MnyoutAbleAmt, long, 16;
		출금가능대용, SubstOutAbleAmt, SubstOutAbleAmt, long, 16;
		주문가능금액, OrdAbleAmt, OrdAbleAmt, long, 16;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		추가증거금구분, AddMgnOcrTpCode, AddMgnOcrTpCode, char, 1;
		추가증거금액, AddMgn, AddMgn, long, 16;
		현금추가증거금액, MnyAddMgn, MnyAddMgn, long, 16;
		익일예탁총액, NtdayTotAmt, NtdayTotAmt, long, 16;
		익일예탁현금, NtdayDps, NtdayDps, long, 16;
		익일미수금, NtdayMnyrclAmt, NtdayMnyrclAmt, long, 16;
		익일예탁대용, NtdaySubstAmt, NtdaySubstAmt, long, 16;
		익일위탁증거금, NtdayCsgnMgn, NtdayCsgnMgn, long, 16;
		익일위탁증거금현금, NtdayMnyCsgnMgn, NtdayMnyCsgnMgn, long, 16;
		익일유지증거금, NtdayMaintMgn, NtdayMaintMgn, long, 16;
		익일유지증거금현금, NtdayMnyMaintMgn, NtdayMnyMaintMgn, long, 16;
		익일인출가능금액, NtdayOutAbleAmt, NtdayOutAbleAmt, long, 16;
		익일인출가능금액, NtdayMnyoutAbleAmt, NtdayMnyoutAbleAmt, long, 16;
		익일인출가능대용, NtdaySubstOutAbleAmt, NtdaySubstOutAbleAmt, long, 16;
		익일주문가능금액, NtdayOrdAbleAmt, NtdayOrdAbleAmt, long, 16;
		익일주문가능현금, NtdayMnyOrdAbleAmt, NtdayMnyOrdAbleAmt, long, 16;
		익일추가증거금구분, NtdayAddMgnTp, NtdayAddMgnTp, char, 1;
		익일추가증거금, NtdayAddMgn, NtdayAddMgn, long, 16;
		익일추가증거금현금, NtdayMnyAddMgn, NtdayMnyAddMgn, long, 16;
		익일결제금액, NtdaySettAmt, NtdaySettAmt, long, 16;
		평가예탁금총액, EvalDpsamtTotamt, EvalDpsamtTotamt, long, 15;
		현금평가예탁금액, MnyEvalDpstgAmt, MnyEvalDpstgAmt, long, 15;
		예탁금이용료지급예정금액, DpsamtUtlfeeGivPrergAmt, DpsamtUtlfeeGivPrergAmt, long, 16;
		세금, TaxAmt, TaxAmt, long, 16;
		위탁증거금 비율, CsgnMgnrat, CsgnMgnrat, double, 7.2;
		위탁증거금현금비율, CsgnMnyMgnrat, CsgnMnyMgnrat, double, 7.2;
		예탁총액부족금액(위탁증거금기준), DpstgTotamtLackAmt, DpstgTotamtLackAmt, long, 16;
		예탁현금부족금액(위탁증거금기준), DpstgMnyLackAmt, DpstgMnyLackAmt, long, 16;
		실입금액, RealInAmt, RealInAmt, long, 16;
		입금액, InAmt, InAmt, long, 16;
		출금액, OutAmt, OutAmt, long, 16;
		선물정산차금, FutsAdjstDfamt, FutsAdjstDfamt, long, 16;
		선물당일차금, FutsThdayDfamt, FutsThdayDfamt, long, 16;
		선물갱신차금, FutsUpdtDfamt, FutsUpdtDfamt, long, 16;
		선물최종결제차금, FutsLastSettDfamt, FutsLastSettDfamt, long, 16;
		옵션결제차금, OptSettDfamt, OptSettDfamt, long, 16;
		옵션매수금액, OptBuyAmt, OptBuyAmt, long, 16;
		옵션매도금액, OptSellAmt, OptSellAmt, long, 16;
		옵션행사차금, OptXrcDfamt, OptXrcDfamt, long, 16;
		옵션배정차금, OptAsgnDfamt, OptAsgnDfamt, long, 16;
		실물인수도금액, RealGdsUndAmt, RealGdsUndAmt, long, 16;
		실물인수도배정대금, RealGdsUndAsgnAmt, RealGdsUndAsgnAmt, long, 16;
		실물인수도행사대금, RealGdsUndXrcAmt, RealGdsUndXrcAmt, long, 16;
		수수료, CmsnAmt, CmsnAmt, long, 16;
		선물수수료, FutsCmsn, FutsCmsn, long, 16;
		옵션수수료, OptCmsn, OptCmsn, long, 16;
		선물약정수량, FutsCtrctQty, FutsCtrctQty, long, 16;
		선물약정금액, FutsCtrctAmt, FutsCtrctAmt, long, 16;
		옵션약정수량, OptCtrctQty, OptCtrctQty, long, 16;
		옵션약정금액, OptCtrctAmt, OptCtrctAmt, long, 16;
		선물미결제수량, FutsUnsttQty, FutsUnsttQty, long, 16;
		선물미결제금액, FutsUnsttAmt, FutsUnsttAmt, long, 16;
		옵션미결제수량, OptUnsttQty, OptUnsttQty, long, 16;
		옵션미결제금액, OptUnsttAmt, OptUnsttAmt, long, 16;
		선물매수미결제수량, FutsBuyUnsttQty, FutsBuyUnsttQty, long, 16;
		선물매수미결제금액, FutsBuyUnsttAmt, FutsBuyUnsttAmt, long, 16;
		선물매도미결제수량, FutsSellUnsttQty, FutsSellUnsttQty, long, 16;
		선물매도미결제금액, FutsSellUnsttAmt, FutsSellUnsttAmt, long, 16;
		옵션매수미결제수량, OptBuyUnsttQty, OptBuyUnsttQty, long, 16;
		옵션매수미결제금액, OptBuyUnsttAmt, OptBuyUnsttAmt, long, 16;
		옵션매도미결제수량, OptSellUnsttQty, OptSellUnsttQty, long, 16;
		옵션매도미결제금액, OptSellUnsttAmt, OptSellUnsttAmt, long, 16;
		선물매수약정수량, FutsBuyctrQty, FutsBuyctrQty, long, 16;
		선물매수약정금액, FutsBuyctrAmt, FutsBuyctrAmt, long, 16;
		선물매도약정수량, FutsSlctrQty, FutsSlctrQty, long, 16;
		선물매도약정금액, FutsSlctrAmt, FutsSlctrAmt, long, 16;
		옵션매수약정수량, OptBuyctrQty, OptBuyctrQty, long, 16;
		옵션매수약정금액, OptBuyctrAmt, OptBuyctrAmt, long, 16;
		옵션매도약정수량, OptSlctrQty, OptSlctrQty, long, 16;
		옵션매도약정금액, OptSlctrAmt, OptSlctrAmt, long, 16;
		선물매매손익금액, FutsBnsplAmt, FutsBnsplAmt, long, 16;
		옵션매매손익금액, OptBnsplAmt, OptBnsplAmt, long, 16;
		선물평가손익금액, FutsEvalPnlAmt, FutsEvalPnlAmt, long, 16;
		옵션평가손익금액, OptEvalPnlAmt, OptEvalPnlAmt, long, 16;
		선물평가금액, FutsEvalAmt, FutsEvalAmt, long, 16;
		옵션평가금액, OptEvalAmt, OptEvalAmt, long, 16;
		장종료후현금입금금액, MktEndAfMnyInAmt, MktEndAfMnyInAmt, long, 16;
		장종료후현금출금금액, MktEndAfMnyOutAmt, MktEndAfMnyOutAmt, long, 16;
		장종료후대용지정금액, MktEndAfSubstDsgnAmt, MktEndAfSubstDsgnAmt, long, 16;
		장종료후대용해지금액, MktEndAfSubstAbndAmt, MktEndAfSubstAbndAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
