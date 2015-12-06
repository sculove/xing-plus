BEGIN_FUNCTION_MAP
	.Func,예탁담보융자가능종목현황조회,CLNAQ00100,SERVICE=CLNAQ00100,headtype=B,CREATOR=이성호,CREDATE=2012/01/10 15:45:49;
	BEGIN_DATA_MAP
	CLNAQ00100InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		조회구분, QryTp, QryTp, char, 1;
		종목번호, IsuNo, IsuNo, char, 12;
		유가증권구분, SecTpCode, SecTpCode, char, 1;
		대출이자등급코드, LoanIntrstGrdCode, LoanIntrstGrdCode, char, 2;
		대출구분, LoanTp, LoanTp, char, 1;
	end
	CLNAQ00100OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		조회구분, QryTp, QryTp, char, 1;
		종목번호, IsuNo, IsuNo, char, 12;
		유가증권구분, SecTpCode, SecTpCode, char, 1;
		대출이자등급코드, LoanIntrstGrdCode, LoanIntrstGrdCode, char, 2;
		대출구분, LoanTp, LoanTp, char, 1;
	end
	CLNAQ00100OutBlock2,Out(*EMPTY*),output,occurs;
	begin
		종목번호, IsuNo, IsuNo, char, 12;
		종목명, IsuNm, IsuNm, char, 40;
		액면가, Parprc, Parprc, double, 13.2;
		전일종가, PrdayCprc, PrdayCprc, double, 13.2;
		비율값, RatVal, RatVal, double, 19.8;
		대용가, SubstPrc, SubstPrc, double, 13.2;
		등록구분, RegTpNm, RegTpNm, char, 20;
		현물증거금징수분류명, SpotMgnLevyClssNm, SpotMgnLevyClssNm, char, 40;
		거래정지사유, FnoTrdStopRsnCnts, FnoTrdStopRsnCnts, char, 40;
		요주의유형명, DgrsPtnNm, DgrsPtnNm, char, 40;
		사고유형, AcdPtnNm, AcdPtnNm, char, 40;
		시장구분, MktTpNm, MktTpNm, char, 20;
		한도값, LmtVal, LmtVal, long, 18;
		계좌한도값, AcntLmtVal, AcntLmtVal, long, 18;
		대출등급코드, LoanGrdCode, LoanGrdCode, char, 2;
		대출금액, LoanAmt, LoanAmt, long, 16;
		대출가능율, LoanAbleRat, LoanAbleRat, double, 26.9;
		대출이율1, LoanIntrat1, LoanIntrat1, double, 14.4;
		등록자ID, RegPsnId, RegPsnId, char, 16;
		비율값, Rat01, Rat01, double, 19.8;
		비율값, Rat02, Rat02, double, 19.8;
	end
	CLNAQ00100OutBlock3,Sum(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		대출금합계금액, LrgMnyoutSumAmt, LrgMnyoutSumAmt, long, 16;
	end
	END_DATA_MAP
END_FUNCTION_MAP
