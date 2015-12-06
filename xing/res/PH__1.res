BEGIN_FUNCTION_MAP
.Feed, KOSPI프로그램매매종목별(PH), PH_, attr, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
        종목코드,                   shcode,         shcode,     char,   6;
    end
    OutBlock,출력,output;
    begin
        수신시간,                   time,           time,       char,   6;

        현재가,                     price,          price,      long,   8;
        전일대비구분,               sign,           sign,       long,   1;
        전일대비,                   change,         change,     long,   8;
        누적거래량,                 volume,         volume,     long,   10;
        등락율,                     drate,          drate,      float,  6.2;

        차익매도호가 잔량,          cdhrem,         cdhrem,     long,   9;
        차익매수호가 잔량,          cshrem,         cshrem,     long,   9;
        비차익매도호가 잔량,        bdhrem,         bdhrem,     long,   9;
        비차익매수호가 잔량,        bshrem,         bshrem,     long,   9;

        차익매도호가 수량,          cdhvolume,      cdhvolume,  long,   9;
        차익매수호가 수량,          cshvolume,      cshvolume,  long,   9;
        비차익매도호가 수량,        bdhvolume,      bdhvolume,  long,   9;
        비차익매수호가 수량,        bshvolume,      bshvolume,  long,   9;

        전체매도위탁체결수량,       dwcvolume,      dwcvolume,  long,   9;
        전체매수위탁체결수량,       swcvolume,      swcvolume,  long,   9;
        전체매도자기체결수량,       djcvolume,      djcvolume,  long,   9;
        전체매수자기체결수량,       sjcvolume,      sjcvolume,  long,   9;

        전체매도체결수량,           tdvolume,       tdvolume,   long,   9;
        전체매수체결수량,           tsvolume,       tsvolume,   long,   9;
        전체순매수 수량,            tvol,           tvol,       long,   9;

        전체매도위탁체결금액,       dwcvalue,       dwcvalue,   long,   12;
        전체매수위탁체결금액,       swcvalue,       swcvalue,   long,   12;
        전체매도자기체결금액,       djcvalue,       djcvalue,   long,   12;
        전체매수자기체결금액,       sjcvalue,       sjcvalue,   long,   12;

        전체매도체결금액,           tdvalue,        tdvalue,    long,   12;
        전체매수체결금액,           tsvalue,        tsvalue,    long,   12;
        전체순매수 금액,            tval,           tval,       long,   12;

        매도 사전공시수량,          pdgvolume,      pdgvolume,  long,   9;
        매수 사전공시수량,          psgvolume,      psgvolume,  long,   9;

        종목코드,                   shcode,         shcode,     char,   6;
    end
    END_DATA_MAP
END_FUNCTION_MAP
