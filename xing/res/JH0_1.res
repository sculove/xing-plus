BEGIN_FUNCTION_MAP
.Feed, 주식선물호가(JH0), JH0, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			futcode,			futcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
		단축코드,			futcode,			futcode,		char,	8;
		호가시간,			hotime,				hotime,			char,	6;
		매도호가1,			offerho1,			offerho1,		long,	10;
		매수호가1,			bidho1,				bidho1,			long,	10;
		매도호가수량1,		offerrem1,			offerrem1,		long,	6;
		매수호가수량1,		bidrem1,			bidrem1,		long,	6;
		매도호가건수1,		offercnt1,			offercnt1,		long,	5;
		매수호가건수1,		bidcnt1,			bidcnt1,		long,	5;
		매도호가2,			offerho2,			offerho2,		long,	10;
		매수호가2,			bidho2,				bidho2,			long,	10;
		매도호가수량2,		offerrem2,			offerrem2,		long,	6;
		매수호가수량2,		bidrem2,			bidrem2,		long,	6;
		매도호가건수2,		offercnt2,			offercnt2,		long,	5;
		매수호가건수2,		bidcnt2,			bidcnt2,		long,	5;
		매도호가3,			offerho3,			offerho3,		long,	10;
		매수호가3,			bidho3,				bidho3,			long,	10;
		매도호가수량3,		offerrem3,			offerrem3,		long,	6;
		매수호가수량3,		bidrem3,			bidrem3,		long,	6;
		매도호가건수3,		offercnt3,			offercnt3,		long,	5;
		매수호가건수3,		bidcnt3,			bidcnt3,		long,	5;
		매도호가4,			offerho4,			offerho4,		long,	10;
		매수호가4,			bidho4,				bidho4,			long,	10;
		매도호가수량4,		offerrem4,			offerrem4,		long,	6;
		매수호가수량4,		bidrem4,			bidrem4,		long,	6;
		매도호가건수4,		offercnt4,			offercnt4,		long,	5;
		매수호가건수4,		bidcnt4,			bidcnt4,		long,	5;
		매도호가5,			offerho5,			offerho5,		long,	10;
		매수호가5,			bidho5,				bidho5,			long,	10;
		매도호가수량5,		offerrem5,			offerrem5,		long,	6;
		매수호가수량5,		bidrem5,			bidrem5,		long,	6;
		매도호가건수5,		offercnt5,			offercnt5,		long,	5;
		매수호가건수5,		bidcnt5,			bidcnt5,		long,	5;
		매도호가6,			offerho6,			offerho6,		long,	10;
		매수호가6,			bidho6,				bidho6,			long,	10;
		매도호가수량6,		offerrem6,			offerrem6,		long,	6;
		매수호가수량6,		bidrem6,			bidrem6,		long,	6;
		매도호가건수6,		offercnt6,			offercnt6,		long,	5;
		매수호가건수6,		bidcnt6,			bidcnt6,		long,	5;
		매도호가7,			offerho7,			offerho7,		long,	10;
		매수호가7,			bidho7,				bidho7,			long,	10;
		매도호가수량7,		offerrem7,			offerrem7,		long,	6;
		매수호가수량7,		bidrem7,			bidrem7,		long,	6;
		매도호가건수7,		offercnt7,			offercnt7,		long,	5;
		매수호가건수7,		bidcnt7,			bidcnt7,		long,	5;
		매도호가8,			offerho8,			offerho8,		long,	10;
		매수호가8,			bidho8,				bidho8,			long,	10;
		매도호가수량8,		offerrem8,			offerrem8,		long,	6;
		매수호가수량8,		bidrem8,			bidrem8,		long,	6;
		매도호가건수8,		offercnt8,			offercnt8,		long,	5;
		매수호가건수8,		bidcnt8,			bidcnt8,		long,	5;
		매도호가9,			offerho9,			offerho9,		long,	10;
		매수호가9,			bidho9,				bidho9,			long,	10;
		매도호가수량9,		offerrem9,			offerrem9,		long,	6;
		매수호가수량9,		bidrem9,			bidrem9,		long,	6;
		매도호가건수9,		offercnt9,			offercnt9,		long,	5;
		매수호가건수9,		bidcnt9,			bidcnt9,		long,	5;
		매도호가10,			offerho10,			offerho10,		long,	10;
		매수호가10,			bidho10,			bidho10,		long,	10;
		매도호가수량10,		offerrem10,			offerrem10,		long,	6;
		매수호가수량10,		bidrem10,			bidrem10,		long,	6;
		매도호가건수10,		offercnt10,			offercnt10,		long,	5;
		매수호가건수10,		bidcnt10,			bidcnt10,		long,	5;
		매도호가총수량,		totofferrem,		totofferrem,	long,	6;
		매수호가총수량,		totbidrem,			totbidrem,		long,	6;
		매도호가총건수,		totoffercnt,		totoffercnt,	long,	5;
		매수호가총건수,		totbidcnt,			totbidcnt,		long,	5;
    end
    END_DATA_MAP
END_FUNCTION_MAP
JH0