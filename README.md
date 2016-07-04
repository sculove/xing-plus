
# `xing-plus` 개발 중입니다
- 프로젝트를 보고 도움받은게 많아서 도움이 될까 하고 참여했습니다.
- 프로젝트 유지보수 및 구현해야할 알고리즘 있을 시 문의바랍니다. (cheesev4@gmail.com)

추가된 기능
 - 10분당 TR 200로 제한 - (이베스트 증권사에서 막는 부분)
 - 연속 조회시 값에 따라서 중지 조건을 넣었습니다. 데이터가 한정없이 조회되는것을 방지하기 위해서입니다.
 - 중지 조건은 현재 "date" 값만 가능하고, 이외에 추가적으로 필요하신것은 말씀해주세요.
 
> 만약, 키움 증권을 이용하시고, JavaScript 개발이 편하시다면,
다음 project를 이용하시면 JavaScript만으로 원하시는 것을 개발할수 있습니다.

https://github.com/sculove/QWebview-plus

제가 QWebview-plus 프로젝트로 개발 방향을 바꾼 이유는 다음과 같습니다.
- JavaScript가 주력언어이기 때문입니다.
- JavaScript로 UI개발이 훨씬 편하기 때문입니다.
- JavaScript는 정말 많은 라이브러리(차트, 데이터 분석, ...)가 있어서 손쉽게 개발할 수 있습니다.
- 키움 오픈 API의 실시간 데이터가 정말 실시간으로 전달됩니다.
- 키움 오픈 API 사용이 훨씬 간편하고 사용하기 편합니다.
- 키움 증권사의 훌륭한 HTS를 손쉽게 적용할 수 있습니다.


----------------
# xing-plus
Xing API를 보다 쉽게 활용할수 있는 라이브러리로, 개인 취미생활 프로젝트를 위한 SDK 입니다.

## Development Environment
 - window7 32bit
 - 이베스트 투자증권 Xing api (http://www.ebestsec.co.kr/)
 - anaconda python 3.4+ (http://continuum.io/downloads)
 - ta-lib 0.4.9+ (Technical Analysis Library) http://www.lfd.uci.edu/~gohlke/pythonlibs/

## Install
https://pypi.python.org/pypi/xing-plus/
```
pip install xing-plus
```

## API Document
http://sculove.github.io/xing-plus/

### Examples Project
https://github.com/sculove/xing-plus-app/

## License
Licensed under MIT:  
https://opensource.org/licenses/MIT 

[![Analytics](https://ga-beacon.appspot.com/UA-37362821-9/xing-plus/readme)](https://github.com/sculove/xing-plus)
