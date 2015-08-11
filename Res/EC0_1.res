BEGIN_FUNCTION_MAP
.Feed, EUREX연계KP200지수옵션선물체결(EC0), EC0, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,				optcode,			optcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
		체결시간(24시간),		chetime,			chetime,		char,	6;
		체결시간(36시간),		chetime1,			chetime1,		char,	6;
		정규장종가대비구분,		sign,				sign,			char,	1;
		정규장종가대비,			change,				change,			float,	6.2;
		정규장종가기준등락율,	drate,				drate,			float,	6.2;
		현재가,					price,				price,			float,	6.2;
		시가,					open,				open,			float,	6.2;
		고가,					high,				high,			float,	6.2;
		저가,					low,				low,			float,	6.2;
		체결구분,				cgubun,				cgubun,			char,	1;
		체결량,					cvolume,			cvolume,		long,	6;
		누적거래량,				volume,				volume,			long,	12;
		누적거래대금(미제공),	value,				value,			long,	12;
		매도누적체결량,			mdvolume,			mdvolume,		long,	12;
		매도누적체결건수(미제공),mdchecnt,			mdchecnt,		long,	8;
		매수누적체결량,			msvolume,			msvolume,		long,	12;
		매수누적체결건수(미제공),mschecnt,			mschecnt,		long,	8;
		체결강도,				cpower,				cpower,			float,	9.2;
		매도호가1,				offerho1,			offerho1,		float,	6.2;
		매수호가1,				bidho1,				bidho1,			float,	6.2;
		미결제약정수량,			openyak,			openyak,		long,	8;
		KOSPI200지수,			k200jisu,			k200jisu,		float,	6.2;
		KOSPI등가,				eqva,				eqva,			float,	7.2;
		이론가,					theoryprice,		theoryprice,	float,	6.2;
		내재변동성,				impv,				impv,			float,	6.2;
		미결제약정증감,			openyakcha,			openyakcha,		long,	8;
		시간가치,				timevalue,			timevalue,		float,	6.2;
		장운영정보,				jgubun,				jgubun,			char,	2;
		전일동시간대거래량,		jnilvolume,			jnilvolume,		long,	12;
		단축코드,				optcode,			optcode,		char,	8;
    end
    END_DATA_MAP
END_FUNCTION_MAP
