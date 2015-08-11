BEGIN_FUNCTION_MAP
.Feed, KOSDAQ우선호가(KS), KS_, attr, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			shcode,			shcode,			char,	6;
    end
    OutBlock,출력,output;
    begin
		매도호가,			offerho,		offerho,		long,	8;
		매수호가,			bidho,			bidho,			long,	8;
		단축코드,			shcode,			shcode,			char,	6;
    end
    END_DATA_MAP
END_FUNCTION_MAP
