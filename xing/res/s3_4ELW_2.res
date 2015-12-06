BEGIN_FUNCTION_MAP
.Feed, ELW체결(s3), s3_, attr, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,		shcode,		shcode,		char,	6;
    end
    OutBlock,출력,output;
    begin
		체결시간,		chetime,	chetime,	char,	6;
		전일대비구분,	sign,		sign,		char,	1;
		전일대비,		change,		change,		long,	8;
		등락율,		    drate,		drate,		float,	6.2;
		현재가,			price,		price,		long,	8;
		시가시간,		opentime,	opentime,	char,	6;
		시가,			open,		open,		long,	8;
		고가시간,		hightime,	hightime,	char,	6;
		고가,			high,		high,		long,	8;
		저가시간,		lowtime,	lowtime,	char,	6;
		저가,			low,		low,		long,	8;
		체결구분,		cgubun,		cgubun,		char,	1;
		체결량,			cvolume,	cvolume,	long,	8;
		누적거래량,		volume,		volume,		long,	12;
		누적거래대금,	value,		value,		long,	12;
		매도누적체결량,	mdvolume,	mdvolume,	long,	12;
	매도누적체결건수,	mdchecnt,	mdchecnt,	long,	8;
		매수누적체결량,	msvolume,	msvolume,	long,	12;
	매수누적체결건수,	mschecnt,	mschecnt,	long,	8;
		체결강도,		cpower,		cpower,		float,	9.2;
		가중평균가,		w_avrg,		w_avrg,		long,	8;
		매도호가,		offerho,	offerho,	long,	8;
		매수호가,		bidho,		bidho,		long,	8;
		장정보,			status,		status,		char,	2;
	전일동시간대거래량,	jnilvolume,	jnilvolume,	long,	12;
		프리미엄,		premium,	premium,	float,	8.2;
		ATM구분,		moneyness,	moneyness,	char,	1;
		단축코드,		shcode,		shcode,		char,	6;
		LP보유수량,		lpvolume,	lpvolume,	long,	15;
    end
    END_DATA_MAP
END_FUNCTION_MAP
