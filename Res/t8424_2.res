BEGIN_FUNCTION_MAP
	.Func,전체업종(t8424),t8424,attr,block,headtype=A;
	BEGIN_DATA_MAP
	t8424InBlock,기본입력,input;
	begin
		구분1,gubun1,gubun1,char,1;
	end
	t8424OutBlock,출력,output,occurs;
	begin
		업종명,hname,hname,char,20;
		업종코드,upcode,upcode,char,3;
	end
	END_DATA_MAP
END_FUNCTION_MAP

