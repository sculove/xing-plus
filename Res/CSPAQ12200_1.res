BEGIN_FUNCTION_MAP
	.Func,현물계좌예수금 주문가능금액 총평가 조회,CSPAQ12200,SERVICE=CSPAQ12200,headtype=B,CREATOR=이상은,CREDATE=2015/04/13 08:41:27;
	BEGIN_DATA_MAP
	CSPAQ12200InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		관리지점번호, MgmtBrnNo, MgmtBrnNo, char, 3;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		잔고생성구분, BalCreTp, BalCreTp, char, 1;
	end
	CSPAQ12200OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		관리지점번호, MgmtBrnNo, MgmtBrnNo, char, 3;
		계좌번호, AcntNo, AcntNo, char, 20;
		비밀번호, Pwd, Pwd, char, 8;
		잔고생성구분, BalCreTp, BalCreTp, char, 1;
	end
	CSPAQ12200OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		지점명, BrnNm, BrnNm, char, 40;
		계좌명, AcntNm, AcntNm, char, 40;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		출금가능금액, MnyoutAbleAmt, MnyoutAbleAmt, long, 16;
		거래소금액, SeOrdAbleAmt, SeOrdAbleAmt, long, 16;
		코스닥금액, KdqOrdAbleAmt, KdqOrdAbleAmt, long, 16;
		잔고평가금액, BalEvalAmt, BalEvalAmt, long, 16;
		미수금액, RcvblAmt, RcvblAmt, long, 16;
		예탁자산총액, DpsastTotamt, DpsastTotamt, long, 16;
		손익율, PnlRat, PnlRat, double, 18.6;
		투자원금, InvstOrgAmt, InvstOrgAmt, long, 20;
		투자손익금액, InvstPlAmt, InvstPlAmt, long, 16;
		신용담보주문금액, CrdtPldgOrdAmt, CrdtPldgOrdAmt, long, 16;
		예수금, Dps, Dps, long, 16;
		대용금액, SubstAmt, SubstAmt, long, 16;
		D1예수금, D1Dps, D1Dps, long, 16;
		D2예수금, D2Dps, D2Dps, long, 16;
		현금미수금액, MnyrclAmt, MnyrclAmt, long, 16;
		증거금현금, MgnMny, MgnMny, long, 16;
		증거금대용, MgnSubst, MgnSubst, long, 16;
		수표금액, ChckAmt, ChckAmt, long, 16;
		대용주문가능금액, SubstOrdAbleAmt, SubstOrdAbleAmt, long, 16;
		증거금률100퍼센트주문가능금액, MgnRat100pctOrdAbleAmt, MgnRat100pctOrdAbleAmt, long, 16;
		증거금률35%주문가능금액, MgnRat35ordAbleAmt, MgnRat35ordAbleAmt, long, 16;
		증거금률50%주문가능금액, MgnRat50ordAbleAmt, MgnRat50ordAbleAmt, long, 16;
		전일매도정산금액, PrdaySellAdjstAmt, PrdaySellAdjstAmt, long, 16;
		전일매수정산금액, PrdayBuyAdjstAmt, PrdayBuyAdjstAmt, long, 16;
		금일매도정산금액, CrdaySellAdjstAmt, CrdaySellAdjstAmt, long, 16;
		금일매수정산금액, CrdayBuyAdjstAmt, CrdayBuyAdjstAmt, long, 16;
		D1연체변제소요금액, D1ovdRepayRqrdAmt, D1ovdRepayRqrdAmt, long, 16;
		D2연체변제소요금액, D2ovdRepayRqrdAmt, D2ovdRepayRqrdAmt, long, 16;
		D1추정인출가능금액, D1PrsmptWthdwAbleAmt, D1PrsmptWthdwAbleAmt, long, 16;
		D2추정인출가능금액, D2PrsmptWthdwAbleAmt, D2PrsmptWthdwAbleAmt, long, 16;
		예탁담보대출금액, DpspdgLoanAmt, DpspdgLoanAmt, long, 16;
		신용설정보증금, Imreq, Imreq, long, 16;
		융자금액, MloanAmt, MloanAmt, long, 16;
		변경후담보비율, ChgAfPldgRat, ChgAfPldgRat, double, 9.3;
		원담보금액, OrgPldgAmt, OrgPldgAmt, long, 16;
		부담보금액, SubPldgAmt, SubPldgAmt, long, 16;
		소요담보금액, RqrdPldgAmt, RqrdPldgAmt, long, 16;
		원담보부족금액, OrgPdlckAmt, OrgPdlckAmt, long, 16;
		담보부족금액, PdlckAmt, PdlckAmt, long, 16;
		추가담보현금, AddPldgMny, AddPldgMny, long, 16;
		D1주문가능금액, D1OrdAbleAmt, D1OrdAbleAmt, long, 16;
		신용이자미납금액, CrdtIntdltAmt, CrdtIntdltAmt, long, 16;
		기타대여금액, EtclndAmt, EtclndAmt, long, 16;
		익일추정반대매매금액, NtdayPrsmptCvrgAmt, NtdayPrsmptCvrgAmt, long, 16;
		원담보합계금액, OrgPldgSumAmt, OrgPldgSumAmt, long, 16;
		신용주문가능금액, CrdtOrdAbleAmt, CrdtOrdAbleAmt, long, 16;
		부담보합계금액, SubPldgSumAmt, SubPldgSumAmt, long, 16;
		신용담보금현금, CrdtPldgAmtMny, CrdtPldgAmtMny, long, 16;
		신용담보대용금액, CrdtPldgSubstAmt, CrdtPldgSubstAmt, long, 16;
		추가신용담보현금, AddCrdtPldgMny, AddCrdtPldgMny, long, 16;
		신용담보재사용금액, CrdtPldgRuseAmt, CrdtPldgRuseAmt, long, 16;
		추가신용담보대용, AddCrdtPldgSubst, AddCrdtPldgSubst, long, 16;
		매도대금담보대출금액, CslLoanAmtdt1, CslLoanAmtdt1, long, 16;
		처분제한금액, DpslRestrcAmt, DpslRestrcAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
