BEGIN_FUNCTION_MAP
.Feed, 상/하한가근접이탈(SHD), SHD, attr, key=1, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		상/하한구분,		updnlmtgubun,	updnlmtgubun,	char,	1;
    end
    OutBlock,출력,output;
    begin
		거래소/코스닥구분,	sijanggubun,	sijanggubun,	char,	1;
		종목명,			    hname,			hname,			char,	20;
		현재가,				price,			price,			long,	8;
		전일대비구분,		sign,			sign,			char,	1;
		전일대비,			change,			change,			long,	8;
		등락율,				drate,			drate,			float,	6.2;
		누적거래량,			volume,			volume,			long,	12;
		거래증가율,			volincrate,		volincrate,		float,	12.2;
		상/하한가,			updnlmtprice,	updnlmtprice,	long,	8;
		상/하한가대비율,	updnlmtdrate,	updnlmtdrate,	float,	6.2;
		전일거래량,			jnilvolume,		jnilvolume,		long,	12;
		단축코드,	    	shcode,			shcode,			char,	6;
		관리구분,			gwangubun,		gwangubun,		char,	1;
		이상급등구분,		undergubun,		undergubun,		char,	1;
		투자유의구분,		tgubun,			tgubun,			char,	1;
		우선주구분,			wgubun,			wgubun,			char,	1;
		불성실구분,			dishonest,		dishonest,		char,	1;
		증거금률,			jkrate,			jkrate,			char,	1;
    end
    END_DATA_MAP
END_FUNCTION_MAP
