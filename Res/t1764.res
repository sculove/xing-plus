BEGIN_FUNCTION_MAP
	.Func,회원사리스트(t1764),t1764,attr,block,headtype=A;
	BEGIN_DATA_MAP
	t1764InBlock,기본입력,input;
	begin
		종목코드,shcode,shcode,char,6;
		구분1,gubun1,gubun1,char,1;
	end
	t1764OutBlock,출력1,output,occurs;
	begin
		순위,rank,rank,long,4;
		거래원번호,tradno,tradno,char,3;
		거래원이름,tradname,tradname,char,20;
	end
	END_DATA_MAP
END_FUNCTION_MAP

