BEGIN_FUNCTION_MAP
.Feed, KOSPI200선물가격제한폭확대(X0), FX0, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			futcode,			futcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
		적용 상한단계	,	upstep		,	upstep		,	char,	2;
		적용 하한단계	,	dnstep		,	dnstep		,	char,	2;
		적용 상한가		,	uplmtprice	,	uplmtprice	,	float,	6.2;
		적용 하한가		,	dnlmtprice	,	dnlmtprice	,	float,	6.2;
		단축코드		,	futcode		,	futcode		,	char,	8;
    end
    END_DATA_MAP
END_FUNCTION_MAP
