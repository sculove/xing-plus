BEGIN_FUNCTION_MAP
.Feed, ETF호가잔량(B7), B7_, attr, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			shcode,			shcode,			char,	6;
    end
    OutBlock,출력,output;
    begin
		호가시간,			hotime,			hotime,			char,	6;
		LP매도호가수량1,	lp_offerho1,	lp_offerho1,	long,	9;
		LP매수호가수량1,	lp_bidho1,		lp_bidho1,		long,	9;
		LP매도호가수량2,	lp_offerho2,	lp_offerho2,	long,	9;
		LP매수호가수량2,	lp_bidho2,		lp_bidho2,		long,	9;
		LP매도호가수량3,	lp_offerho3,	lp_offerho3,	long,	9;
		LP매수호가수량3,	lp_bidho3,		lp_bidho3,		long,	9;
		LP매도호가수량4,	lp_offerho4,	lp_offerho4,	long,	9;
		LP매수호가수량4,	lp_bidho4,		lp_bidho4,		long,	9;
		LP매도호가수량5,	lp_offerho5,	lp_offerho5,	long,	9;
		LP매수호가수량5,	lp_bidho5,		lp_bidho5,		long,	9;
		LP매도호가수량6,	lp_offerho6,	lp_offerho6,	long,	9;
		LP매수호가수량6,	lp_bidho6,		lp_bidho6,		long,	9;
		LP매도호가수량7,	lp_offerho7,	lp_offerho7,	long,	9;
		LP매수호가수량7,	lp_bidho7,		lp_bidho7,		long,	9;
		LP매도호가수량8,	lp_offerho8,	lp_offerho8,	long,	9;
		LP매수호가수량8,	lp_bidho8,		lp_bidho8,		long,	9;
		LP매도호가수량9,	lp_offerho9,	lp_offerho9,	long,	9;
		LP매수호가수량9,	lp_bidho9,		lp_bidho9,		long,	9;
		LP매도호가수량10,	lp_offerho10,	lp_offerho10,	long,	9;
		LP매수호가수량10,	lp_bidho10,		lp_bidho10,		long,	9;
		단축코드,			shcode,			shcode,			char,	6;
		매도호가1,			offerho1,		offerho1,		long,	7;
		매수호가1,			bidho1,			bidho1,			long,	7;
		매도호가잔량1,		offerrem1,		offerrem1,		long,	9;
		매수호가잔량1,		bidrem1,		bidrem1,		long,	9;
		매도호가2,			offerho2,		offerho2,		long,	7;
		매수호가2,			bidho2,			bidho2,			long,	7;
		매도호가잔량2,		offerrem2,		offerrem2,		long,	9;
		매수호가잔량2,		bidrem2,		bidrem2,		long,	9;
		매도호가3,			offerho3,		offerho3,		long,	7;
		매수호가3,			bidho3,			bidho3,			long,	7;
		매도호가잔량3,		offerrem3,		offerrem3,		long,	9;
		매수호가잔량3,		bidrem3,		bidrem3,		long,	9;
		매도호가4,			offerho4,		offerho4,		long,	7;
		매수호가4,			bidho4,			bidho4,			long,	7;
		매도호가잔량4,		offerrem4,		offerrem4,		long,	9;
		매수호가잔량4,		bidrem4,		bidrem4,		long,	9;
		매도호가5,			offerho5,		offerho5,		long,	7;
		매수호가5,			bidho5,			bidho5,		    long,	7;
		매도호가잔량5,		offerrem5,		offerrem5,	    long,	9;
		매수호가잔량5,		bidrem5,		bidrem5,		long,	9;
		매도호가6,			offerho6,		offerho6,		long,	7;
		매수호가6,			bidho6,			bidho6,			long,	7;
		매도호가잔량6,		offerrem6,		offerrem6,		long,	9;
		매수호가잔량6,		bidrem6,		bidrem6,		long,	9;
		매도호가7,			offerho7,		offerho7,		long,	7;
		매수호가7,			bidho7,			bidho7,			long,	7;
		매도호가잔량7,		offerrem7,		offerrem7,		long,	9;
		매수호가잔량7,		bidrem7,		bidrem7,		long,	9;
		매도호가8,			offerho8,		offerho8,		long,	7;
		매수호가8,			bidho8,			bidho8,			long,	7;
		매도호가잔량8,		offerrem8,		offerrem8,		long,	9;
		매수호가잔량8,		bidrem8,		bidrem8,		long,	9;
		매도호가9,			offerho9,		offerho9,		long,	7;
		매수호가9,			bidho9,			bidho9,			long,	7;
		매도호가잔량9,		offerrem9,		offerrem9,		long,	9;
		매수호가잔량9,		bidrem9,		bidrem9,		long,	9;
		매도호가10,			offerho10,		offerho10,		long,	7;
		매수호가10,			bidho10,		bidho10,		long,	7;
		매도호가잔량10,		offerrem10,		offerrem10,		long,	9;
		매수호가잔량10,		bidrem10,		bidrem10,		long,	9;
		총매도호가잔량,		totofferrem,	totofferrem,	long,	9;
		총매수호가잔량,		totbidrem,		totbidrem,		long,	9;
        동시호가구분,	    donsigubun,	    donsigubun,		char,	1;
		배분적용구분,		alloc_gubun,	alloc_gubun,	char,	1;
    end
    END_DATA_MAP
END_FUNCTION_MAP
