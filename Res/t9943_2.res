BEGIN_FUNCTION_MAP
	.Func,지수선물마스터조회API용(t9943),t9943,block,headtype=A;
	BEGIN_DATA_MAP
	t9943InBlock,기본입력,input;
	begin
		구분,gubun,gubun,char,1;
	end
	t9943OutBlock,주식종목마스터,output,occurs;
	begin
		종목명,hname,hname,char,20;
		단축코드,shcode,shcode,char,8;
		확장코드,expcode,expcode,char,12;
	end
	END_DATA_MAP
END_FUNCTION_MAP

