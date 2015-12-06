BEGIN_FUNCTION_MAP
.Feed, US지수(MK2), MK2, attr, key=16, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		심볼코드,			symbol,			symbol,			char,	16;
    end
    OutBlock,출력,output;
    begin
		일자,			    date,		    date,		    char,	8;
		시간,			    time,		    time,		    char,	6;
		한국일자,		    kodate,		    kodate,		    char,	8;
		한국시간,		    kotime,		    kotime,		    char,	6;
		시가,			    open,		    open,		    float,	9.2;
		고가,			    high,		    high,		    float,	9.2;
		저가,			    low,		    low,		    float,	9.2;
		현재가,			    price,		    price,		    float,	9.2;
		전일대비구분,	    sign,		    sign,		    char,	1;
		전일대비,			change,		    change,		    float,	9.2;
		등락율,			    uprate,		    uprate,		    float,	9.2;
		매수호가,		    bidho,		    bidho,		    float,	9.2;
		매수잔량,		    bidrem,		    bidrem,		    long,	9;
		매도호가,		    offerho,		offerho,		float,	9.2;
		매도잔량,		    offerrem,		offerrem,		long,	9;
		누적거래량,		    volume,		    volume,		    float,	12.0;
		심벌,		        xsymbol,	    xsymbol,        char,	16;
		체결거래량,		    cvolume,	    cvolume,	float,	8.0;
    end
    END_DATA_MAP
END_FUNCTION_MAP
