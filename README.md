# xing-plus
Xing API를 보다 쉽게 활용할수 있는 라이브러리로, 개인 취미생활 프로젝트를 위한 SDK 입니다.

## 개발환경
 - window7 32bit
 - 이베스트 투자증권 Xing api (http://www.ebestsec.co.kr/)
 - anaconda python 3.5 (http://continuum.io/downloads)
 - ta-lib (Technical Analysis Library) http://www.lfd.uci.edu/~gohlke/pythonlibs/

## Getting Start
작성중...

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

> 입력 파라미터는 "TR번호" + "InBlock" 형태이다.
출력 파라미터는 "TR번호" + "OutBlock" 형태이다.
입력시에는 "TR번호"를 제외하고 파라미터를 구성한다.

#### 사용예
```python
Query("t8407").request({
		"InBlock" : {
			"nrec" : len(codes),
			"shcode" : "".join(codes)
		}
	},{
		"OutBlock1" : DataFrame(columns=("shcode","hname","price","open","high","low","sign","change","diff","volume"))
});
```
