BEGIN_FUNCTION_MAP
.Feed, 주식선물체결(JC0), JC0, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			futcode,			futcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
        단축코드,           futcode,            futcode,        char,       8;
        체결시간,           chetime,            chetime,        char,       6;
        대비기호,           sign,               sign,           char,       1;
        전일대비,           change,             change,         long,       10;
        등락율,             drate,              drate,          double,      6.2;
        현재가,             price,              price,          long,       10;
        시가,               open,               open,           long,       10;
        고가,               high,               high,           long,       10;
        저가,               low,                low,            long,       10;
        체결구분,           cgubun,             cgubun,         char,       1;
        체결량,             cvolume,            cvolume,        long,       6;
        누적거래량,         volume,             volume,         long,       12;
        누적거래대금,       value,              value,          long,       15;
        매도누적체결량,     mdvolume,           mdvolume,       long,       12;
        매도누적체결건수,   mdchecnt,           mdchecnt,       long,       8;
        매수누적체결량,     msvolume,           msvolume,       long,       12;
        매수누적체결건수,   mschecnt,           mschecnt,       long,       8;
        체결강도,           cpower,             cpower,         double,      9.2;
        매도호가1,          offerho1,           offerho1,       long,       10;
        매수호가1,          bidho1,             bidho1,         long,       10;
        미결제약정수량,     openyak,            openyak,        long,       8;
        KOSPI200지수,       k200jisu,           k200jisu,       double,      6.2;
        이론가,             theoryprice,        theoryprice,    long,       8;
        괴리율,             kasis,              kasis,          double,      6.3;
        시장BASIS,          sbasis,             sbasis,         long,       6;
        이론BASIS,          ibasis,             ibasis,         long,       6;
        미결제약정증감,     openyakcha,         openyakcha,     long,       8;
        장운영정보,         jgubun,             jgubun,         char,       2;
        전일동시간대거래량, jnilvolume,         jnilvolume,     long,       12;
		기초자산현재가,     basprice,           basprice,       long,       8;
    end
    END_DATA_MAP
END_FUNCTION_MAP
JC0