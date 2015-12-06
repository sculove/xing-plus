BEGIN_FUNCTION_MAP
.Feed, KOSDAQ프로그램매매전체집계(KM), KM_, attr, key=1, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
        구분값,                     gubun,          gubun,      char,   1;
    end
    OutBlock,출력,output;
    begin
        수신시간,                   time,           time,       char,   6;
        차익매도호가 잔량,          cdhrem,         cdhrem,     long,   6;
        차익매수호가 잔량,          cshrem,         cshrem,     long,   6;
        비차익매도호가 잔량,        bdhrem,         bdhrem,     long,   6;
        비차익매수호가 잔량,        bshrem,         bshrem,     long,   6;

        차익매도호가 수량,          cdhvolume,      cdhvolume,  long,   6;
        차익매수호가 수량,          cshvolume,      cshvolume,  long,   6;
        비차익매도호가 수량,        bdhvolume,      bdhvolume,  long,   6;
        비차익매수호가 수량,        bshvolume,      bshvolume,  long,   6;

        차익매도위탁체결수량,       cdwvolume,      cdwvolume,  long,   6;
        차익매도자기체결수량,       cdjvolume,      cdjvolume,  long,   6;
        차익매수위탁체결수량,       cswvolume,      cswvolume,  long,   6;
        차익매수자기체결수량,       csjvolume,      csjvolume,  long,   6;
        차익위탁순매수 수량,        cwvol,          cwvol,      long,   6;
        차익자기순매수 수량,        cjvol,          cjvol,      long,   6;

        비차익매도위탁체결수량,     bdwvolume,      bdwvolume,  long,   6;
        비차익매도자기체결수량,     bdjvolume,      bdjvolume,  long,   6;
        비차익매수위탁체결수량,     bswvolume,      bswvolume,  long,   6;
        비차익매수자기체결수량,     bsjvolume,      bsjvolume,  long,   6;
        비차익위탁순매수 수량,      bwvol,          bwvol,      long,   6;
        비차익자기순매수 수량,      bjvol,          bjvol,      long,   6;

        전체매도위탁체결수량,       dwvolume,       dwvolume,   long,   6;
        전체매수위탁체결수량,       swvolume,       swvolume,   long,   6;
        전체위탁순매수 수량,        wvol,           wvol,       long,   6;
        전체매도자기체결수량,       djvolume,       djvolume,   long,   6;
        전체매수자기체결수량,       sjvolume,       sjvolume,   long,   6;
        전체자기순매수 수량,        jvol,           jvol,       long,   6;

        차익매도위탁체결금액,       cdwvalue,       cdwvalue,   long,   8;
        차익매도자기체결금액,       cdjvalue,       cdjvalue,   long,   8;
        차익매수위탁체결금액,       cswvalue,       cswvalue,   long,   8;
        차익매수자기체결금액,       csjvalue,       csjvalue,   long,   8;
        차익위탁순매수 금액,        cwval,          cwval,      long,   8;
        차익자기순매수 금액,        cjval,          cjval,      long,   8;

        비차익매도위탁체결금액,     bdwvalue,       bdwvalue,   long,   8;
        비차익매도자기체결금액,     bdjvalue,       bdjvalue,   long,   8;
        비차익매수위탁체결금액,     bswvalue,       bswvalue,   long,   8;
        비차익매수자기체결금액,     bsjvalue,       bsjvalue,   long,   8;
        비차익위탁순매수 금액,      bwval,          bwval,      long,   8;
        비차익자기순매수 금액,      bjval,          bjval,      long,   8;

        전체매도위탁체결금액,       dwvalue,        dwvalue,    long,   8;
        전체매수위탁체결금액,       swvalue,        swvalue,    long,   8;
        전체위탁순매수 금액,        wval,           wval,       long,   8;
        전체매도자기체결금액,       djvalue,        djvalue,    long,   8;
        전체매수자기체결금액,       sjvalue,        sjvalue,    long,   8;
        전체자기순매수 금액,        jval,           jval,       long,   8;

        KOSDAQ50 지수,              k50jisu,        k50jisu,    float,  6.2;
        KOSDAQ50 전일대비구분,      k50sign,        k50sign,    char,   1;
        KOSDAQ50 전일대비,          change,         change,     float,  6.2;
        KOSDAQ50 베이시스,          k50basis,       k50basis,   float,  4.2;

        차익매도체결수량합계,       cdvolume,       cdvolume,   long,   6;
        차익매수체결수량합계,       csvolume,       csvolume,   long,   6;
        차익순매수 수량합계,        cvol,           cvol,       long,   6;

        비차익매도체결수량합계,     bdvolume,       bdvolume,   long,   6;
        비차익매수체결수량합계,     bsvolume,       bsvolume,   long,   6;
        비차익순매수 수량합계,      bvol,           bvol,       long,   6;

        전체매도체결수량합계,       tdvolume,       tdvolume,   long,   6;
        전체매수체결수량합계,       tsvolume,       tsvolume,   long,   6;
        전체순매수 수량합계,        tvol,           tvol,       long,   6;

        차익매도체결금액합계,       cdvalue,        cdvalue,    long,   8;
        차익매수체결금액합계,       csvalue,        csvalue,    long,   8;
        차익순매수 금액합계,        cval,           cval,       long,   8;

        비차익매도체결금액합계,     bdvalue,        bdvalue,    long,   8;
        비차익매수체결금액합계,     bsvalue,        bsvalue,    long,   8;
        비차익순매수 금액합계,      bval,           bval,       long,   8;

        전체매도체결금액합계,       tdvalue,        tdvalue,    long,   8;
        전체매수체결금액합계,       tsvalue,        tsvalue,    long,   8;
        전체순매수 금액합계,        tval,           tval,       long,   8;

        차익매도체결수량직전대비,   p_cdvolcha,     p_cdvolcha, long,   6;
        차익매수체결수량직전대비,   p_csvolcha,     p_csvolcha, long,   6;
        차익순매수 수량직전대비,    p_cvolcha,      p_cvolcha,  long,   6;

        비차익매도체결수량직전대비, p_bdvolcha,     p_bdvolcha, long,   6;
        비차익매수체결수량직전대비, p_bsvolcha,     p_bsvolcha, long,   6;
        비차익순매수 수량직전대비,  p_bvolcha,      p_bvolcha,  long,   6;

        전체매도체결수량직전대비,   p_tdvolcha,     p_tdvolcha, long,   6;
        전체매수체결수량직전대비,   p_tsvolcha,     p_tsvolcha, long,   6;
        전체순매수 수량직전대비,    p_tvolcha,      p_tvolcha,  long,   6;

        차익매도체결금액직전대비,   p_cdvalcha,     p_cdvalcha, long,   8;
        차익매수체결금액직전대비,   p_csvalcha,     p_csvalcha, long,   8;
        차익순매수 금액직전대비,    p_cvalcha,      p_cvalcha,  long,   8;

        비차익매도체결금액직전대비, p_bdvalcha,     p_bdvalcha, long,   8;
        비차익매수체결금액직전대비, p_bsvalcha,     p_bsvalcha, long,   8;
        비차익순매수 금액직전대비,  p_bvalcha,      p_bvalcha,  long,   8;

        전체매도체결금액직전대비,   p_tdvalcha,     p_tdvalcha, long,   8;
        전체매수체결금액직전대비,   p_tsvalcha,     p_tsvalcha, long,   8;
        전체순매수 금액직전대비,    p_tvalcha,      p_tvalcha,  long,   8;
        
		구분값,                     gubun,          gubun,      char,   1;
    end
    END_DATA_MAP
END_FUNCTION_MAP
