BEGIN_FUNCTION_MAP
.Feed, ELW예상체결(Ys3), Ys3, attr, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			shcode,			shcode,			char,	6;
    end
    OutBlock,출력,output;
    begin
		호가시간,			hotime,			hotime,			char,	6;
		예상체결가격,		yeprice,		yeprice,		long,	8;
		예상체결수량,		yevolume,		yevolume,		long,	12;
예상체결가전일종가대비구분,	jnilysign,      jnilysign,		char,	1;
예상체결가전일종가대비,		jnilchange,		preychange,		long,	8;
예상체결가전일종가등락율,	jnilydrate,     jnilydrate,		float,	6.2;
		예상매도호가,		yofferho0,		yofferho0,		long,	8;
		예상매수호가,		ybidho0,		ybidho0,		long,	8;
		예상매도호가수량,	yofferrem0,		yofferrem0,		long,	12;
		예상매수호가수량,	ybidrem0,		ybidrem0,		long,	12;
		단축코드,			shcode,			shcode,			char,	6;
    end
    END_DATA_MAP
END_FUNCTION_MAP
