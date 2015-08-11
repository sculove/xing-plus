BEGIN_FUNCTION_MAP
.Feed, CME연계KP200지수선물체결(NC0), NC0, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			futcode,			futcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
		체결시간(24시간),	chetime,			chetime,		char,	6;
		체결시간(36시간),	chetime1,			chetime1,		char,	6;
		전일대비구분,		sign,				sign,			char,	1;
		전일대비,			change,				change,			float,	6.2;
		등락율,				drate,				drate,			float,	6.2;
		현재가,				price,				price,			float,	6.2;
		시가,				open,				open,			float,	6.2;
		고가,				high,				high,			float,	6.2;
		저가,				low,				low,			float,	6.2;
		체결구분,			cgubun,				cgubun,			char,	1;
		체결량,				cvolume,			cvolume,		long,	6;
		누적거래량,			volume,				volume,			long,	12;
		누적거래대금,		value,				value,			long,	12;
		매도누적체결량,		mdvolume,			mdvolume,		long,	12;
		매도누적체결건수,	mdchecnt,			mdchecnt,		long,	8;
		매수누적체결량,		msvolume,			msvolume,		long,	12;
		매수누적체결건수,	mschecnt,			mschecnt,		long,	8;
		체결강도,			cpower,				cpower,			float,	9.2;
		매도호가1,			offerho1,			offerho1,		float,	6.2;
		매수호가1,			bidho1,				bidho1,			float,	6.2;
		미결제약정수량,		openyak,			openyak,		long,	8;
		KOSPI200지수,		k200jisu,			k200jisu,		float,	6.2;
		이론가,				theoryprice,		theoryprice,	float,	6.2;
		괴리율,				kasis,				kasis,			float,	6.2;
		시장BASIS,			sbasis,				sbasis,			float,	6.2;
		이론BASIS,			ibasis,				ibasis,			float,	6.2;
		미결제약정증감,		openyakcha,			openyakcha,		long,	8;
		장운영정보,			jgubun,				jgubun,			char,	2;
		미사용filler,		jnilvolume,			jnilvolume,		long,	12;
		단축코드,			futcode,			futcode,		char,	8;
    end
    END_DATA_MAP
END_FUNCTION_MAP
NC0