BEGIN_FUNCTION_MAP
.Feed, KOSPI200옵션호가(H0), OH0, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			optcode,			optcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
		호가시간,			hotime,				hotime,			char,	6;
		매도호가1,			offerho1,			offerho1,		double,	6.2;
		매수호가1,			bidho1,				bidho1,			double,	6.2;
		매도호가수량1,		offerrem1,			offerrem1,		long,	7;
		매수호가수량1,		bidrem1,			bidrem1,		long,	7;
		매도호가건수1,		offercnt1,			offercnt1,		long,	5;
		매수호가건수1,		bidcnt1,			bidcnt1,		long,	5;
		매도호가2,			offerho2,			offerho2,		double,	6.2;
		매수호가2,			bidho2,				bidho2,			double,	6.2;
		매도호가수량2,		offerrem2,			offerrem2,		long,	7;
		매수호가수량2,		bidrem2,			bidrem2,		long,	7;
		매도호가건수2,		offercnt2,			offercnt2,		long,	5;
		매수호가건수2,		bidcnt2,			bidcnt2,		long,	5;
		매도호가3,			offerho3,			offerho3,		double,	6.2;
		매수호가3,			bidho3,				bidho3,			double,	6.2;
		매도호가수량3,		offerrem3,			offerrem3,		long,	7;
		매수호가수량3,		bidrem3,			bidrem3,		long,	7;
		매도호가건수3,		offercnt3,			offercnt3,		long,	5;
		매수호가건수3,		bidcnt3,			bidcnt3,		long,	5;
		매도호가4,			offerho4,			offerho4,		double,	6.2;
		매수호가4,			bidho4,				bidho4,			double,	6.2;
		매도호가수량4,		offerrem4,			offerrem4,		long,	7;
		매수호가수량4,		bidrem4,			bidrem4,		long,	7;
		매도호가건수4,		offercnt4,			offercnt4,		long,	5;
		매수호가건수4,		bidcnt4,			bidcnt4,		long,	5;
		매도호가5,			offerho5,			offerho5,		double,	6.2;
		매수호가5,			bidho5,				bidho5,			double,	6.2;
		매도호가수량5,		offerrem5,			offerrem5,		long,	7;
		매수호가수량5,		bidrem5,			bidrem5,		long,	7;
		매도호가건수5,		offercnt5,			offercnt5,		long,	5;
		매수호가건수5,		bidcnt5,			bidcnt5,		long,	5;
		매도호가총수량,		totofferrem,		totofferrem,	long,	7;
		매수호가총수량,		totbidrem,			totbidrem,		long,	7;
		매도호가총건수,		totoffercnt,		totoffercnt,	long,	5;
		매수호가총건수,		totbidcnt,			totbidcnt,		long,	5;
		단축코드,			optcode,			optcode,		char,	8;
		단일가호가여부,		danhochk,			danhochk,		char,	1;
		배분적용구분,		alloc_gubun,		alloc_gubun,	char,	1;
    end
    END_DATA_MAP
END_FUNCTION_MAP
OH0