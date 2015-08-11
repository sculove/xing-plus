BEGIN_FUNCTION_MAP
.Feed, 뉴ELW투자지표민감도(ESN), ESN, attr, key=6, group=1;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		단축코드,			shcode,			shcode,			char,	6;
    end
    OutBlock,출력,output;
    begin
		시간,				time,			time,			char,	6;
		장중이론가,			theoryprice,	theoryprice,	float,	10.2;
		델타,				delt,			delt,			float,	7.6;
		감마,				gama,			gama,			float,	7.6;
		세타,				ceta,			ceta,			float,	12.6;
		베가,				vega,			vega,			float,	12.6;
		로우,				rhox,			rhox,			float,	12.6;
		내재변동성,			impv,			impv,			float,	5.2;
		E.기어링,			egearing,		egearing,		float,	8.2;
		단축코드,			shcode,			shcode,			char,	6;
		ELW현재가,          elwclose,       elwclose,       long,   8;
        ELW전일대비구분,    sign,           sign,           char,   1;
        ELW전일대비,        change,         change,         long,   8;
		일자,               date,           date,           char,   8;
		틱환산,             tickvalue,      tickvalue,      float,  10.2;
		LP내재변동성,		lp_impv,		lp_impv,		float,	5.2;
    end
    END_DATA_MAP
END_FUNCTION_MAP
ESN