BEGIN_FUNCTION_MAP
.Feed, KOSPI200옵션실시간상하한가(D0), OD0, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			optcode,			optcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
		접속매매여부		,	gubun,			gubun,			char,	1;
		실시간가격제한여부	,	dy_gubun,		dy_gubun,		char,	1;
		실시간상한가		,	dy_uplmtprice,	dy_uplmtprice,	float,	8.2;
		실시간하한가		,	dy_dnlmtprice,	dy_dnlmtprice,	float,	8.2;
		단축코드			,	opttcode,		opttcode,		char,	8;
    end
    END_DATA_MAP
END_FUNCTION_MAP
