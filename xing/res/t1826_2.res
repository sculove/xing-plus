BEGIN_FUNCTION_MAP
	.Func,종목Q클릭검색리스트조회(씽큐스마트)(t1826),t1826,block,headtype=A;
	BEGIN_DATA_MAP
	t1826InBlock,기본입력,input;
	begin
		검색구분(0:핵심검색1:지표검색2:시세동향3:투자자동향),search_gb,search_gb,char,1;
	end
	t1826OutBlock,출력,output,occurs;
	begin
		검색코드,search_cd,search_cd,char,4;
		검색명,search_nm,search_nm,char,40;
	end
	END_DATA_MAP
END_FUNCTION_MAP

