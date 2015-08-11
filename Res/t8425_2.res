BEGIN_FUNCTION_MAP
	.Func,전체테마(t8425),t8425,attr,block,headtype=A;
	BEGIN_DATA_MAP
	t8425InBlock,기본입력,input;
	begin
		Dummy,dummy,dummy,char,1;
	end
	t8425OutBlock,출력,output,occurs;
	begin
		테마명,tmname,tmname,char,36;
		테마코드,tmcode,tmcode,char,4;
	end
	END_DATA_MAP
END_FUNCTION_MAP

