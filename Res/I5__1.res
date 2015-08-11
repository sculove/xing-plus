BEGIN_FUNCTION_MAP
.Feed, 코스피ETF종목실시간NAV(I5), I5_, attr, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			shcode,			shcode,			char,	6;
    end
    OutBlock,출력,output;
    begin
		시간,				time,			time,			char,	8;
		현재가,				price,			price,			long,	8;
		전일대비구분,		sign,			sign,			char,	1;
		전일대비,			change,			change,			long,	8;
		누적거래량,			volume,			volume,			float,	12;
		NAV대비,			navdiff,		navdiff,		float,	9.2;
		NAV,				nav,			nav,			float,	9.2;
		전일대비,			navchange,		navchange,		float,	9.2;
		추적오차,			crate,			crate,			float,	9.2;
		괴리,				grate,			grate,			float,	9.2;
		지수,				jisu,			jisu,			float,	8.2;
		전일대비,			jichange,		jichange,		float,	8.2;
		전일대비율,			jirate,			jirate,			float,	8.2;
		단축코드,       	shcode,     	shcode,     	char,   6;
    end
    END_DATA_MAP
END_FUNCTION_MAP
