BEGIN_FUNCTION_MAP
	.Func,만기월조회(t9907),t9907,block,headtype=A;
	BEGIN_DATA_MAP
	t9907InBlock,기본입력,input;
	begin
		DUMMY,dummy,dummy,char,1;
	end
	t9907OutBlock1,출력1,output,occurs;
	begin
		만기월,lastym,lastym,char,6;
		만기월명,lastnm,lastnm,char,10;
	end
	END_DATA_MAP
END_FUNCTION_MAP

