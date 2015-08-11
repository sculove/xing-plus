BEGIN_FUNCTION_MAP
.Feed, 지수(IJ), IJ_, attr, key=3, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		업종코드,			upcode,			upcode,			char,	3;
    end
    OutBlock,출력,output;
    begin
		시간,				time,			time,			char,	6;
		지수,				jisu,			jisu,			float,	8.2;
		전일대비구분,		sign,			sign,			char,	1;
		전일비,				change,			change,			float,	8.2;
		등락율,				drate,			drate,			float,	6.2;
		체결량,				cvolume,		cvolume,		long,	8;
		거래량,				volume,			volume,			long,	8;
		거래대금,			value,			value,			long,	8;
		상한종목수,			upjo,			upjo,			long,	4;
		상승종목수,			highjo,			highjo,			long,	4;
		보합종목수,			unchgjo,		unchgjo,		long,	4;
		하락종목수,			lowjo,			lowjo,			long,	4;
		하한종목수,			downjo,			downjo,			long,	4;
		상승종목비율,		upjrate,		upjrate,		float,	6.2;
		시가지수,			openjisu,		openjisu,		float,	8.2;
		시가시간,   		opentime,		opentime,		char,	6;
		고가지수,			highjisu,		highjisu,		float,	8.2;
		고가시간,			hightime,		hightime,		char,	6;
		저가지수,			lowjisu,		lowjisu,		float,	8.2;
		저가시간,			lowtime,		lowtime,		char,	6;
		외인순매수수량,		frgsvolume,		frgsvolume,		long,	8;
		기관순매수수량,		orgsvolume,		orgsvolume,		long,	8;
		외인순매수금액,		frgsvalue,		frgsvalue,		long,	10;
		기관순매수금액,		orgsvalue,		orgsvalue,		long,	10;
		업종코드,			upcode,			upcode,			char,	3;
    end
    END_DATA_MAP
END_FUNCTION_MAP
