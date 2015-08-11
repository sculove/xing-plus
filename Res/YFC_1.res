BEGIN_FUNCTION_MAP
.Feed, 지수선물예상체결(YFC), YFC, attr, key=8, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			futcode,			futcode,			char,	8;
    end
    OutBlock,출력,output;
    begin
		예상체결시간,		ychetime,		ychetime,		char,	6;
		예상체결가격,		yeprice,		yeprice,		float,	6.2;
예상체결가전일종가대비구분,	jnilysign,      jnilysign,		char,	1;
예상체결가전일종가대비,		jnilchange,		preychange,		float,	6.2;
예상체결가전일종가등락율,	jnilydrate,     jnilydrate,		float,	6.2;
		단축코드,			futcode,		futcode,		char,	8;
    end
    END_DATA_MAP
END_FUNCTION_MAP
YFC