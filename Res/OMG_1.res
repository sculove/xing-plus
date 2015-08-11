BEGIN_FUNCTION_MAP
.Feed, KOSPI200옵션민감도(MG), OMG, attr, key=8, group=1 ;
    BEGIN_DATA_MAP
    InBlock,입력,input;
    begin
		옵션코드,			optcode,			optcode,		char,	8;
    end
    OutBlock,출력,output;
    begin
        체결시간,           chetime,            chetime,        char,   6;
		행사가,				actprice,			actprice,		float,	6.2;
		KOSPI200지수,		k200jisu,			k200jisu,		float,	6.2;
		선물가격,			fut200jisu,			fut200jisu,		float,	6.2;
		현재가,				price,				price,			float,	6.2;
		대표내재변동성,		capimpv,			capimpv,		float,	6.2;
		내재변동성,			impv,				impv,			float,	6.2;
		델타(블랙숄즈),		delt,				delt,			float,	7.4;
		감마(블랙숄즈),		gama,				gama,			float,	7.4;
		세타(블랙숄즈),		ceta,				ceta,			float,	7.4;
		베가(블랙숄즈),		vega,				vega,			float,	7.4;
		로우(블랙숄즈),		rhox,				rhox,			float,	7.4;
		이론가(블랙숄즈),	theoryprice,		theoryprice,	float,	6.2;
		전일가내재변동성,	bimpv,				bimpv,			float,	6.2;
		매도가내재변동성,	offerimpv,			offerimpv,		float,	6.2;
		매수가내재변동성,	bidimpv,			bidimpv,		float,	6.2;
		옵션코드,			optcode,			optcode,		char,	8;
    end
    END_DATA_MAP
END_FUNCTION_MAP
OMG