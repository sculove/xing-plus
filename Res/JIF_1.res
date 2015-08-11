BEGIN_FUNCTION_MAP
.Feed, 장운영정보(JIF), JIF, key=1, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
    	장구분,			jangubun,		jangubun,		char,	1;
    end
    OutBlock,출력,output;
    begin
		장구분,			jangubun,		jangubun,		char,	1;
		장상태,			jstatus,		jstatus,		char,	2;
    end
    END_DATA_MAP
END_FUNCTION_MAP
JIF