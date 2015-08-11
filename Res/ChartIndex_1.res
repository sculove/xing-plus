BEGIN_FUNCTION_MAP
	.Func,챠트지표데이터조회,CHARTINDEX,headtype=B;
	BEGIN_DATA_MAP
	ChartIndexInBlock,In(*EMPTY*),input;
	begin
		지표ID, indexid, indexid, long, 10
		지표명, indexname, indexname, char, 40;
		지표조건설정, indexparam, indexparam, char, 40;
		시장구분, market, market, char, 1;
		주기구분, period, period, char, 1;
		단축코드, shcode, shcode, char, 8;
		요청건수(최대 500개), qrycnt, qrycnt, long, 4;
		단위(n틱/n분), ncnt, ncnt, long, 4;
		시작일자, sdate, sdate, char, 8;
		종료일자, edate, edate, char, 8;
		수정주가 반영 여부, Isamend, Isamend, char, 1;
		갭보정 여부, Isgab, Isgab, char, 1;
		실시간 데이터수신 자동등록 여부, IsReal, IsReal, char, 1;
	end
	ChartIndexOutBlock,Out(*EMPTY*),output;
	begin
		지표ID, indexid, indexid, long, 10;
		레코드갯수, rec_cnt, rec_cnt, long, 5;
		유효 데이터 컬럼 갯수, validdata_cnt, validdata_cnt, long, 2;
	end
	ChartIndexOutBlock1,Out(*EMPTY*),output,occurs;
	begin
		일자, date, date, char, 8;
		시간, time, time, char, 6;
		시가, open, open, float, 10;
		고가, high, high, float, 10;
		저가, low, low, float, 10;
		종가, close, close, float, 10;
		거래량, volume, volume, float, 12;
		지표값1, value1, value1, float, 10;
		지표값2, value2, value2, float, 10;
		지표값3, value3, value3, float, 10;
		지표값4, value4, value4, float, 10;
		지표값5, value5, value5, float, 10;
		위치, pos, pos, long, 8;
	end
	END_DATA_MAP
END_FUNCTION_MAP
