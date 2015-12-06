BEGIN_FUNCTION_MAP
	.Func,챠트엑셀데이터조회,CHARTEXCEL,headtype=B;
	BEGIN_DATA_MAP
	ChartExcelInBlock,In(*EMPTY*),input;
	begin
		지표ID, indexid, indexid, long, 10
		지표명, indexname, indexname, char, 40;
		지표조건설정, indexparam, indexparam, char, 40;
		결과데이터 구분, indexouttype, indexouttype, char, 1;
		시장구분, market, market, char, 1;
		주기구분, period, period, char, 1;
		단축코드, shcode, shcode, char, 8;
		결과 지표데이터 엑셀표시 여부, isexcelout, isexcelout, char, 1;
		엑셀데이터 파일명, excelfilename, excelfilename, char, 256;
		실시간 데이터수신 자동등록 여부, IsReal, IsReal, char, 1;
	end
	ChartExcelOutBlock,Out(*EMPTY*),output;
	begin
		지표ID, indexid, indexid, long, 10;
		레코드갯수, rec_cnt, rec_cnt, long, 5;
		유효 데이터 컬럼 갯수, validdata_cnt, validdata_cnt, long, 2;
	end
	ChartExcelOutBlock1,Out(*EMPTY*),output,occurs;
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
