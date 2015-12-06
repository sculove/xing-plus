BEGIN_FUNCTION_MAP
.Feed, 시간대별투자자매매추이(BMT), BMT, attr, key=3, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
        업종코드,                    upcode,         upcode,     char,   3;
    end
    OutBlock,출력,output;
    begin
        수신시간,                    tjjtime,        tjjtime,    char,   8;

        투자자코드1(개인),           tjjcode1,       tjjcode1,   char,   4;
        매수 거래량1,                msvolume1,      msvolume1,  long,   8;
        매도 거래량1,                mdvolume1,      mdvolume1,  long,   8;
        거래량 순매수1,              msvol1,         msvol1,     long,   8;
        매수 거래대금1,              msvalue1,       msvalue1,   long,   6;
        매도 거래대금1,              mdvalue1,       mdvalue1,   long,   6;
        거래대금 순매수1,            msval1,         msval1,     long,   6;

        투자자코드2(외국인),         tjjcode2,       tjjcode2,   char,   4;
        매수 거래량2,                msvolume2,      msvolume2,  long,   8;
        매도 거래량2,                mdvolume2,      mdvolume2,  long,   8;
        거래량 순매수2,              msvol2,         msvol2,     long,   8;
        매수 거래대금2,              msvalue2,       msvalue2,   long,   6;
        매도 거래대금2,              mdvalue2,       mdvalue2,   long,   6;
        거래대금 순매수2,            msval2,         msval2,     long,   6;

        투자자코드3(기관계),         tjjcode3,       tjjcode3,   char,   4;
        매수 거래량3,                msvolume3,      msvolume3,  long,   8;
        매도 거래량3,                mdvolume3,      mdvolume3,  long,   8;
        거래량 순매수3,              msvol3,         msvol3,     long,   8;
        매수 거래대금3,              msvalue3,       msvalue3,   long,   6;
        매도 거래대금3,              mdvalue3,       mdvalue3,   long,   6;
        거래대금 순매수3,            msval3,         msval3,     long,   6;

        투자자코드4(증권),           tjjcode4,       tjjcode4,   char,   4;
        매수 거래량4,                msvolume4,      msvolume4,  long,   8;
        매도 거래량4,                mdvolume4,      mdvolume4,  long,   8;
        거래량 순매수4,              msvol4,         msvol4,     long,   8;
        매수 거래대금4,              msvalue4,       msvalue4,   long,   6;
        매도 거래대금4,              mdvalue4,       mdvalue4,   long,   6;
        거래대금 순매수4,            msval4,         msval4,     long,   6;

        투자자코드5(투신),           tjjcode5,       tjjcode5,   char,   4;
        매수 거래량5,                msvolume5,      msvolume5,  long,   8;
        매도 거래량5,                mdvolume5,      mdvolume5,  long,   8;
        거래량 순매수5,              msvol5,         msvol5,     long,   8;
        매수 거래대금5,              msvalue5,       msvalue5,   long,   6;
        매도 거래대금5,              mdvalue5,       mdvalue5,   long,   6;
        거래대금 순매수5,            msval5,         msval5,     long,   6;

        투자자코드6(은행),           tjjcode6,       tjjcode6,   char,   4;
        매수 거래량6,                msvolume6,      msvolume6,  long,   8;
        매도 거래량6,                mdvolume6,      mdvolume6,  long,   8;
        거래량 순매수6,              msvol6,         msvol6,     long,   8;
        매수 거래대금6,              msvalue6,       msvalue6,   long,   6;
        매도 거래대금6,              mdvalue6,       mdvalue6,   long,   6;
        거래대금 순매수6,            msval6,         msval6,     long,   6;

        투자자코드7(보험),           tjjcode7,       tjjcode7,   char,   4;
        매수 거래량7,                msvolume7,      msvolume7,  long,   8;
        매도 거래량7,                mdvolume7,      mdvolume7,  long,   8;
        거래량 순매수7,              msvol7,         msvol7,     long,   8;
        매수 거래대금7,              msvalue7,       msvalue7,   long,   6;
        매도 거래대금7,              mdvalue7,       mdvalue7,   long,   6;
        거래대금 순매수7,            msval7,         msval7,     long,   6;

        투자자코드8(종금),           tjjcode8,       tjjcode8,   char,   4;
        매수 거래량8,                msvolume8,      msvolume8,  long,   8;
        매도 거래량8,                mdvolume8,      mdvolume8,  long,   8;
        거래량 순매수8,              msvol8,         msvol8,     long,   8;
        매수 거래대금8,              msvalue8,       msvalue8,   long,   6;
        매도 거래대금8,              mdvalue8,       mdvalue8,   long,   6;
        거래대금 순매수8,            msval8,         msval8,     long,   6;

        투자자코드9(기금),           tjjcode9,       tjjcode9,   char,   4;
        매수 거래량9,                msvolume9,      msvolume9,  long,   8;
        매도 거래량9,                mdvolume9,      mdvolume9,  long,   8;
        거래량 순매수9,              msvol9,         msvol9,     long,   8;
        매수 거래대금9,              msvalue9,       msvalue9,   long,   6;
        매도 거래대금9,              mdvalue9,       mdvalue9,   long,   6;
        거래대금 순매수9,            msval9,         msval9,     long,   6;

        투자자코드10(선물업자),      tjjcode10,      tjjcode10,  char,   4;
        매수 거래량10,               msvolume10,     msvolume10, long,   8;
        매도 거래량10,               mdvolume10,     mdvolume10, long,   8;
        거래량 순매수10,             msvol10,        msvol10,    long,   8;
        매수 거래대금10,             msvalue10,      msvalue10,  long,   6;
        매도 거래대금10,             mdvalue10,      mdvalue10,  long,   6;
        거래대금 순매수10,           msval10,        msval10,    long,   6;

        투자자코드11(기타),          tjjcode11,      tjjcode11,  char,   4;
        매수 거래량11,               msvolume11,     msvolume11, long,   8;
        매도 거래량11,               mdvolume11,     mdvolume11, long,   8;
        거래량 순매수11,             msvol11,        msvol11,    long,   8;
        매수 거래대금11,             msvalue11,      msvalue11,  long,   6;
        매도 거래대금11,             mdvalue11,      mdvalue11,  long,   6;
        거래대금 순매수11,           msval11,        msval11,    long,   6;

        업종코드,                    upcode,         upcode,     char,   3;

        투자자코드0(사모펀드),       tjjcode0,       tjjcode0,   char,   4;
        매수 거래량0,                msvolume0,      msvolume0,  long,   8;
        매도 거래량0,                mdvolume0,      mdvolume0,  long,   8;
        거래량 순매수0,              msvol0,         msvol0,     long,   8;
        매수 거래대금0,              msvalue0,       msvalue0,   long,   6;
        매도 거래대금0,              mdvalue0,       mdvalue0,   long,   6;
        거래대금 순매수0,            msval0,         msval0,     long,   6;
    end
    END_DATA_MAP
END_FUNCTION_MAP
