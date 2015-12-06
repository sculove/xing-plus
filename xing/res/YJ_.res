BEGIN_FUNCTION_MAP
.Feed, 예상지수(YJ), YJ_, attr, key=3, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		업종코드,			upcode,			upcode,			char,	3;
    end
    OutBlock,출력,output;
    begin
		시간,			    time,			time,			char,	6;
		예상지수,			jisu,			jisu,			float,	8.2;
		예상전일대비구분,   sign,			sign,			char,	1;
		예상전일비,			change,			change,			float,	8.2;
		예상등락율,			drate,			drate,			float,	6.2;
		예상체결량,			cvolume,		cvolume,		long,	8;
		누적거래량,			volume,			volume,			long,	8;
		예상거래대금,		value,			value,			long,	8;
		업종코드,			upcode,			upcode,			char,	3;
    end
    END_DATA_MAP
END_FUNCTION_MAP
