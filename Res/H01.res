BEGIN_FUNCTION_MAP
.Feed, 선물주문정정취소, H01, key=8, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
    end
    OutBlock,출력,output;
    begin
		라인일련번호,   lineseq,    lineseq,    long,   10;
		계좌번호,		accno,	    accno,	    char,	11;
		조작자ID,		user,	    user,	    char,	8;
		일련번호,   	seq,    	seq,	    long,   11;
		trcode,  		trcode,		trcode,		char,	11;
		매칭그룹번호,   megrpno,    megrpno,    char,   2;
		보드ID,         boardid,    boardid,    char,   2;
		회원번호,		memberno,	memberno,	char,	5;
		지점번호,		bpno,	    bpno,	    char,	5;
		주문번호,		ordno,	    ordno,	    char,	10;
		원주문번호,		ordordno,	orgordno,	char,	10;
		종목코드,		expcode,	expcode,	char,	12;
		매도수구분,		dosugb,	    dosugb,	    char,	1;
		정정취소구분,	mocagb,		mocagb,		char,	1;
		계좌번호1,		accno1,	    accno1,	    char,	12;
		호가수량,		qty2,	    qty2,	    long,	10;
		호가가격,	    price,	    price,	    float,	11.2;
		주문유형,		ordgb,	    ordgb,	    char,	1;
		호가구분,		hogagb,	    hogagb,	    char,	1;
		시장조성호가구분, sihogagb, sihogagb,   char,   11;
		자사주신고서ID,	treaid,		tradid,		char,	5;
		자사주매매방법,	treacode,	treacode,	char,	1;
		매도유형코드,	askcode,	askcode,	char,	2;
		신용구분코드,	creditcode,	creditcode,	char,	2;
		위탁자기구분,	jakigb,	    jakigb,	    char,	2;
		위탁사번호,		trustnum,	trustnum,	char,	5;
		프로그램구분,	ptgb,		ptgb,		char,	2;
		대용주권계좌번호,substocnum,substonum,	char,	12;
		계좌구분코드,	accgb,		accgb,		char,	2;
		계좌증거금코드,	accmarggb,	accmarggb,	char,	2;
		국가코드,		nationcode,	nationcode,	char,	3;
		투자자구분,		investgb,	investgb,	char,	4;
		외국인코드,		forecode,	forecode,	char,	2;
		주문매체구분,	medcode,	medcode,	char,	1;
		주문식별자번호,	ordid,		ordid,		char,	12;
		MAC주소,	    macid,		macid,		char,	12;
		호가일자,		orddate,	orddate,	char,	8;
		회원사주문시각,	rcvtime,	rcvtime,	char,	9;
		mem_filler,     mem_filler, mem_filler, char,   7;
		mem_accno,      mem_accno,  mem_accno,  char,  11;
		mem_filler1,    mem_filler, mem_filler1,char,  42;
		매칭접수시간,   ordacpttm,  ordacpttm,  char,   9;
		실정정취소수량,	qty,	    qty,	    long,  10;
		자동취소구분,	autogb,		autogb,		char,	1;
		거부사유,		rejcode,	rejcode,	char,	4;
		프로그램호가신고, prgordde, prgordde,   char,   1;
    end
    END_DATA_MAP
END_FUNCTION_MAP
