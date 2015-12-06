BEGIN_FUNCTION_MAP
	.Func,기초자산리스트조회(t9905),t9905,block,headtype=A;
	BEGIN_DATA_MAP
	t9905InBlock,기본입력,input;
	begin
		DUMMY,dummy,dummy,char,1;
	end
	t9905OutBlock1,출력1,output,occurs;
	begin
		단축코드,shcode,shcode,char,6;
		표준코드,expcode,expcode,char,12;
		종목명,hname,hname,char,20;
	end
	END_DATA_MAP
END_FUNCTION_MAP

