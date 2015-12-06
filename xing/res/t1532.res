BEGIN_FUNCTION_MAP
	.Func,종목별테마(t1532),t1532,attr,block,headtype=A;
	BEGIN_DATA_MAP
	t1532InBlock,기본입력,input;
	begin
		종목코드,shcode,shcode,char,6;
	end
	t1532OutBlock,출력,output,occurs;
	begin
		테마명,tmname,tmname,char,36;
		평균등락율,avgdiff,avgdiff,float,6.2;
		테마코드,tmcode,tmcode,char,4;
	end
	END_DATA_MAP
END_FUNCTION_MAP

