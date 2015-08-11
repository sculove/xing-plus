BEGIN_FUNCTION_MAP
	.Func,서버시간조회(t0167),t0167,block,headtype=A;
	BEGIN_DATA_MAP
	t0167InBlock,기본입력,input;
	begin
		id,id,id,char,8;
	end
	t0167OutBlock,출력,output;
	begin
		일자(YYYYMMDD),dt,dt,char,8;
		시간(HHMMSSssssss),time,time,char,12;
	end
	END_DATA_MAP
END_FUNCTION_MAP

