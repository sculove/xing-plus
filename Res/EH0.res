BEGIN_FUNCTION_MAP
.Feed, EUREX연계KP200지수옵션선물호가(EH0), EH0, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			optcode,			optcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
		호가시간(24시간),		hotime,				hotime,			char,	6;
		호가시간(36시간),		hotime1,			hotime1,		char,	6;
		매도호가1,				offerho1,			offerho1,		double,	6.2;
		매수호가1,				bidho1,				bidho1,			double,	6.2;
		매도호가수량1,			offerrem1,			offerrem1,		long,	7;
		매수호가수량1,			bidrem1,			bidrem1,		long,	7;
		매도호가건수1(미제공),	offercnt1,			offercnt1,		long,	5;
		매수호가건수1(미제공),	bidcnt1,			bidcnt1,		long,	5;
		매도호가2,				offerho2,			offerho2,		double,	6.2;
		매수호가2,				bidho2,				bidho2,			double,	6.2;
		매도호가수량2,			offerrem2,			offerrem2,		long,	7;
		매수호가수량2,			bidrem2,			bidrem2,		long,	7;
		매도호가건수2(미제공),	offercnt2,			offercnt2,		long,	5;
		매수호가건수2(미제공),	bidcnt2,			bidcnt2,		long,	5;
		매도호가3,				offerho3,			offerho3,		double,	6.2;
		매수호가3,				bidho3,				bidho3,			double,	6.2;
		매도호가수량3,			offerrem3,			offerrem3,		long,	7;
		매수호가수량3,			bidrem3,			bidrem3,		long,	7;
		매도호가건수3(미제공),	offercnt3,			offercnt3,		long,	5;
		매수호가건수3(미제공),	bidcnt3,			bidcnt3,		long,	5;
		매도호가4(미제공),		offerho4,			offerho4,		double,	6.2;
		매수호가4(미제공),		bidho4,				bidho4,			double,	6.2;
		매도호가수량4(미제공),	offerrem4,			offerrem4,		long,	7;
		매수호가수량4(미제공),	bidrem4,			bidrem4,		long,	7;
		매도호가건수4(미제공),	offercnt4,			offercnt4,		long,	5;
		매수호가건수4(미제공),	bidcnt4,			bidcnt4,		long,	5;
		매도호가5(미제공),		offerho5,			offerho5,		double,	6.2;
		매수호가5(미제공),		bidho5,				bidho5,			double,	6.2;
		매도호가수량5(미제공),	offerrem5,			offerrem5,		long,	7;
		매수호가수량5(미제공),	bidrem5,			bidrem5,		long,	7;
		매도호가건수5(미제공),	offercnt5,			offercnt5,		long,	5;
		매수호가건수5(미제공),	bidcnt5,			bidcnt5,		long,	5;
		매도호가총수량,			totofferrem,		totofferrem,	long,	7;
		매수호가총수량,			totbidrem,			totbidrem,		long,	7;
		매도호가총건수,			totoffercnt,		totoffercnt,	long,	5;
		매수호가총건수,			totbidcnt,			totbidcnt,		long,	5;
		단축코드,				optcode,			optcode,		char,	8;
		단일가호가여부,			danhochk,			danhochk,		char,	1;
    end
    END_DATA_MAP
END_FUNCTION_MAP
