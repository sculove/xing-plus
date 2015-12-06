# xing-plus
Xing API를 보다 쉽게 활용할수 있는 라이브러리로, 개인 취미생활 프로젝트를 위한 SDK 입니다.

## 개발환경
 - window7 32bit
 - 이베스트 투자증권 Xing api (http://www.ebestsec.co.kr/)
 - anaconda python 3.4+ (http://continuum.io/downloads)
 - ta-lib (Technical Analysis Library) http://www.lfd.uci.edu/~gohlke/pythonlibs/

## 주요 객체 설명
### xasession
서버에 로그인을 하는 객체  
작성중...

### xaquery
TR을 조회하는 객체
#### 생성자
생성자에는 TR의 종류와 연속 호출 여부를 전달한다.
```python
Query("TR번호", isNext = TRUE)
```
#### 사용법
request 메소드를 이용하여 TR을 조회한다.
```
request("입력파라미터", "출력파라미터")
```

> 입력시에는 "TR번호"를 제외하고 파라미터를 구성한다.
 - 입력 파라미터는 "InBlock" + a 형태이다.  
 - 출력 파라미터는 "OutBlock" + a 형태이다.  
    - DataFrame형태인 경우 occur로 다수의 데이터를 수집하는 형태이다.
    - Tuple형태인 경우, 단일 건의 데이터를 수집하는 형태이다.  

#### 사용예
```python
Query("t8407").request({
		"InBlock" : {
			"nrec" : len(codes),
			"shcode" : "".join(codes)
		}
	},{
		"OutBlock1" : DataFrame(columns=("shcode","hname","price","open","high","low","sign","change","diff","volume"))
})

Query("t1101", False).request({
		"InBlock" : {
			"shcode" : shcode
		}
	},{
		"OutBlock" : ("hname","price", "sign", "change", "diff", "volume", "jnilclose",
			"offerho1", "bidho1", "offerrem1", "bidrem1", "preoffercha1","prebidcha1",
			"offerho2", "bidho2", "offerrem2", "bidrem2", "preoffercha2","prebidcha2",
			"offerho3", "bidho3", "offerrem3", "bidrem3", "preoffercha3","prebidcha3",
			"offerho4", "bidho4", "offerrem4", "bidrem4", "preoffercha4","prebidcha4",
			"offerho5", "bidho5", "offerrem5", "bidrem5", "preoffercha5","prebidcha5",
			"offerho6", "bidho6", "offerrem6", "bidrem6", "preoffercha6","prebidcha6",
			"offerho7", "bidho7", "offerrem7", "bidrem7", "preoffercha7","prebidcha7",
			"offerho8", "bidho8", "offerrem8", "bidrem8", "preoffercha8","prebidcha8",
			"offerho9", "bidho9", "offerrem9", "bidrem9", "preoffercha9","prebidcha9",
			"offerho10", "bidho10", "offerrem10", "bidrem10", "preoffercha10","prebidcha10",
			"offer", "bid", "preoffercha", "prebidcha", "uplmtprice", "dnlmtprice", "open", "high", "low", "ho_status", "hotime"
		)
})
```
