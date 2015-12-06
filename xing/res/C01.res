BEGIN_FUNCTION_MAP
.Feed, 선물주문체결, C01, key=8, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
    end
    OutBlock,출력,output;
    begin
		라인일련번호,   lineseq,    lineseq,    long,   10;
		계좌번호,		accno,	    accno,	    char,	11;
		조작자ID,		user,	    user,	    char,	8;

		일련번호,   	seq,    	seq,    	long,   11;
		trcode,		    trcode, 	trcode,     char,	11;
		매칭그룹번호,   megrpno,    megrpno,    char,   2;
		보드ID,         boardid,    boardid,    char,   2;
		회원번호,		memberno,	memberno,	char,	5;
		지점번호,		bpno,	    bpno,	    char,	5;
		주문번호,		ordno,	    ordno,	    char,	10;
		원주문번호,		ordordno,	orgordno,	char,	10;
		종목코드,		expcode,	expcode,	char,	12;
		약정번호,		yakseq,	    yakseq,	    char,	11;
		체결가격,		cheprice,	cheprice,	float,	11.2;
		체결수량,		chevol,		chevol,		long,	10;
		세션ID,		    sessionid,	sessionid,  char,	2;
		체결일자,		chedate,	chedate,	char,	8;
		체결시각,		chetime,	chetime,	char,	9;
		최근월체결가격,	spdprc1,	spdprc1,	float,	11.2;
		차근월체결가격,	spdprc2,	spdprc2,	float,	11.2;
		매도수구분,		dosugb,	    dosugb,	    char,	1;
		계좌번호1,		accno1,	    accno1,	    char,	12;
		시장조성호가구분,sihogagb,	sihogagb,	char,	11;
		위탁사번호,		jakino,	    jakino,	    char,	5;
		대용주권계좌번호,daeyong,	daeyong,	char,	12;
		mem_filler,     mem_filler, mem_filler, char,   7;
		mem_accno,      mem_accno,  mem_accno,  char,  11;       
		mem_filler1,    mem_filler, mem_filler1,char,  42;       
    end
    END_DATA_MAP
END_FUNCTION_MAP
