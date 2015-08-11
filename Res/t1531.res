BEGIN_FUNCTION_MAP
	.Func,테마별종목(t1531),t1531,attr,block,headtype=A;
	BEGIN_DATA_MAP
	t1531InBlock,기본입력,input;
	begin
		테마명,tmname,tmname,char,36;
		테마코드,tmcode,tmcode,char,4;
	end
	t1531OutBlock,출력,output,occurs;
	begin
		테마명,tmname,tmname,char,36;
		평균등락율,avgdiff,avgdiff,float,6.2;
		테마코드,tmcode,tmcode,char,4;
	end
	END_DATA_MAP
END_FUNCTION_MAP

