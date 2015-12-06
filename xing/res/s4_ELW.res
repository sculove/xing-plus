BEGIN_FUNCTION_MAP
.Feed, ELW기세(s4), s4_, attr, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,		shcode,		shcode,		char,	6;
    end
    OutBlock,출력,output;
    begin
		전일대비구분,	sign,		sign,		char,	1;
		전일대비,		change,		change,		long,	8;
		등락율,			drate,		drate,		float,	6.2;
		현재가,			price,		price,		long,	8;
		시가시간,		opentime,	opentime,	char,	6;
		시가,			open,		open,		long,	8;
		고가시간,		hightime,	hightime,	char,	6;
		고가,			high,		high,		long,	8;
		저가시간,		lowtime,	lowtime,	char,	6;
		저가,			low,		low,		long,	8;
		단축코드,		shcode,		shcode,		char,	6;
    end
    END_DATA_MAP
END_FUNCTION_MAP
