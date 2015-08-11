BEGIN_FUNCTION_MAP
	.Func,현물계좌증거금률별주문가능수량조회,CSPBQ00200,SERVICE=CSPBQ00200,headtype=B,CREATOR=이상은,CREDATE=2011/12/12 09:22:25;
	BEGIN_DATA_MAP
	CSPBQ00200InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		종목번호, IsuNo, IsuNo, char, 12;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
		통신매체코드, RegCommdaCode, RegCommdaCode, char, 2;
	end
	CSPBQ00200OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		매매구분, BnsTpCode, BnsTpCode, char, 1;
		계좌번호, AcntNo, AcntNo, char, 20;
		입력비밀번호, InptPwd, InptPwd, char, 8;
		종목번호, IsuNo, IsuNo, char, 12;
		주문가격, OrdPrc, OrdPrc, double, 15.2;
		통신매체코드, RegCommdaCode, RegCommdaCode, char, 2;
	end
	CSPBQ00200OutBlock2,Out(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		계좌명, AcntNm, AcntNm, char, 40;
		종목명, IsuNm, IsuNm, char, 40;
		예수금, Dps, Dps, long, 16;
		대용금액, SubstAmt, SubstAmt, long, 16;
		신용담보재사용금액, CrdtPldgRuseAmt, CrdtPldgRuseAmt, long, 16;
		현금주문가능금액, MnyOrdAbleAmt, MnyOrdAbleAmt, long, 16;
		대용주문가능금액, SubstOrdAbleAmt, SubstOrdAbleAmt, long, 16;
		현금증거금액, MnyMgn, MnyMgn, long, 16;
		대용증거금액, SubstMgn, SubstMgn, long, 16;
		거래소금액, SeOrdAbleAmt, SeOrdAbleAmt, long, 16;
		코스닥금액, KdqOrdAbleAmt, KdqOrdAbleAmt, long, 16;
		추정예수금(D+1), PrsmptDpsD1, PrsmptDpsD1, long, 16;
		추정예수금(D+2), PrsmptDpsD2, PrsmptDpsD2, long, 16;
		출금가능금액, MnyoutAbleAmt, MnyoutAbleAmt, long, 16;
		미수금액, RcvblAmt, RcvblAmt, long, 16;
		수수료율, CmsnRat, CmsnRat, double, 15.5;
		추가징수금액, AddLevyAmt, AddLevyAmt, long, 16;
		재사용대상금액, RuseObjAmt, RuseObjAmt, long, 16;
		현금재사용대상금액, MnyRuseObjAmt, MnyRuseObjAmt, long, 16;
		이용사증거금률, FirmMgnRat, FirmMgnRat, double, 7.4;
		대용재사용대상금액, SubstRuseObjAmt, SubstRuseObjAmt, long, 16;
		종목증거금률, IsuMgnRat, IsuMgnRat, double, 7.4;
		계좌증거금률, AcntMgnRat, AcntMgnRat, double, 7.4;
		거래증거금률, TrdMgnrt, TrdMgnrt, double, 7.4;
		수수료, Cmsn, Cmsn, long, 16;
		증거금률20퍼센트주문가능금액, MgnRat20pctOrdAbleAmt, MgnRat20pctOrdAbleAmt, long, 16;
		증거금률100퍼센트현금주문가능수량?, MgnRat20OrdAbleQty, MgnRat20OrdAbleQty, long, 16;
		증거금률30퍼센트주문가능금액, MgnRat30pctOrdAbleAmt, MgnRat30pctOrdAbleAmt, long, 16;
		증거금률30퍼센트주문가능수량??, MgnRat30OrdAbleQty, MgnRat30OrdAbleQty, long, 16;
		증거금률40퍼센트주문가능금액, MgnRat40pctOrdAbleAmt, MgnRat40pctOrdAbleAmt, long, 16;
		증거금률40퍼센트주문가능수량??, MgnRat40OrdAbleQty, MgnRat40OrdAbleQty, long, 16;
		증거금률100퍼센트주문가능금액, MgnRat100pctOrdAbleAmt, MgnRat100pctOrdAbleAmt, long, 16;
		증거금률100퍼센트주문가능수량??, MgnRat100OrdAbleQty, MgnRat100OrdAbleQty, long, 16;
		증거금률100퍼센트현금주문가능금액?, MgnRat100MnyOrdAbleAmt, MgnRat100MnyOrdAbleAmt, long, 16;
		증거금률100퍼센트현금주문가능수량, MgnRat100MnyOrdAbleQty, MgnRat100MnyOrdAbleQty, long, 16;
		증거금률20퍼센트재사용가능금액, MgnRat20pctRuseAbleAmt, MgnRat20pctRuseAbleAmt, long, 16;
		증거금률30퍼센트재사용가능금액, MgnRat30pctRuseAbleAmt, MgnRat30pctRuseAbleAmt, long, 16;
		증거금률40퍼센트재사용가능금액, MgnRat40pctRuseAbleAmt, MgnRat40pctRuseAbleAmt, long, 16;
		증거금률100퍼센트재사용가능금액, MgnRat100pctRuseAbleAmt, MgnRat100pctRuseAbleAmt, long, 16;
		주문가능수량, OrdAbleQty, OrdAbleQty, long, 16;
		주문가능금액, OrdAbleAmt, OrdAbleAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
CSPBQ00200