BEGIN_FUNCTION_MAP
.Feed, KOSDAQ장전시간외호가잔량(HB), HB_, attr, key=6, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			shcode,			shcode,			char,	6;
    end
    OutBlock,출력,output;
    begin
		호가시간,			hotime,			hotime,			char,	6;
		시간외매도잔량,		tmofferrem,		tmofferrem,		long,	12;
		시간외매수잔량,		tmbidrem,		tmbidrem,		long,	12;
시간외매도수량직전대비,		pretmoffercha,	pretmoffercha,	long,	12;
시간외매수수량직전대비,		pretmbidcha,	pretmbidcha,	long,	12;
		단축코드,			shcode,			shcode,			char,	6;
    end
    END_DATA_MAP
END_FUNCTION_MAP
