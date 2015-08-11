BEGIN_FUNCTION_MAP
.Feed, 실시간 뉴스 제목 패킷(NWS), NWS, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		뉴스코드,			nwcode,			nwcode,			char,	6;
    end
    OutBlock,출력,output;
    begin
		날짜,               date,           date,           char,   8;
		시간,               time,           time,           char,   6;
		뉴스구분자,         id,             id,             char,   2;
		키값,	    		realkey,		realkey,		char,	24;
		제목,       		title,		    title,		    char,	300;
		단축종목코드,  		code,		    code,		    char,	240;
		BODY길이,   		bodysize,		bodysize,		long,	8;
    end
    END_DATA_MAP
END_FUNCTION_MAP
