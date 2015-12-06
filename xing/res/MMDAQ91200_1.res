BEGIN_FUNCTION_MAP
	.Func,파생상품증거금율조회,MMDAQ91200,SERVICE=MMDAQ91200,headtype=B,CREATOR=임정선,CREDATE=2014/09/03 15:16:28;
	BEGIN_DATA_MAP
	MMDAQ91200InBlock1,In(*EMPTY*),input;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		종목대분류코드, IsuLgclssCode, IsuLgclssCode, char, 2;
		종목중분류코드, IsuMdclssCode, IsuMdclssCode, char, 2;
	end
	MMDAQ91200OutBlock1,In(*EMPTY*),output;
	begin
		레코드갯수, RecCnt, RecCnt, long, 5
		종목대분류코드, IsuLgclssCode, IsuLgclssCode, char, 2;
		종목중분류코드, IsuMdclssCode, IsuMdclssCode, char, 2;
	end
	MMDAQ91200OutBlock2,Out(*EMPTY*),output,occurs;
	begin
		종목소분류코드, IsuSmclssCode, IsuSmclssCode, char, 3;
		종목중분류코드, IsuMdclssCode, IsuMdclssCode, char, 2;
		종목대중분류명, IsuLrgMdclssNm, IsuLrgMdclssNm, char, 40;
		종목대중소분류명, IsuLrgMidSmclssNm, IsuLrgMidSmclssNm, char, 40;
		단축한글종목명, ShtnHanglIsuNm, ShtnHanglIsuNm, char, 40;
		위탁증거금율, CsgnMgnrt, CsgnMgnrt, double, 26.9;
		유지증거금율, MaintMgnrt, MaintMgnrt, double, 26.9;
		현금증거금율, MnyMgnrt, MnyMgnrt, double, 26.9;
		잔여일수, RmndDays, RmndDays, long, 6;
	end
	END_DATA_MAP
END_FUNCTION_MAP
