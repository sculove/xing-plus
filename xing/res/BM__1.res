BEGIN_FUNCTION_MAP
.Feed, 업종별투자자별매매현황(BM), BM_, attr, key=3, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
        업종코드,                   upcode,         upcode,     char,   3;
    end
    OutBlock,출력,output;
    begin
        투자자코드,                 tjjcode,        tjjcode,    char,   4;
        수신시간,                   tjjtime,        tjjtime,    char,   8;
        매수 거래량,                msvolume,       msvolume,   long,   8;
        매도 거래량,                mdvolume,       mdvolume,   long,   8;
        거래량 순매수,              msvol,          msvol,      long,   8;
        거래량 순매수 직전대비,     p_msvol,        p_msvol,    long,   8;
        매수 거래대금,              msvalue,        msvalue,    long,   6;
        매도 거래대금,              mdvalue,        mdvalue,    long,   6;
        거래대금 순매수,            msval,          msval,      long,   6;
        거래대금 순매수 직전대비,   p_msval,        p_msval,    long,   6;
        업종코드,                   upcode,         upcode,     char,   3;
    end
    END_DATA_MAP
END_FUNCTION_MAP
