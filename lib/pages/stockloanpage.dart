import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StockLoanPage extends StatefulWidget {
  const StockLoanPage({Key? key}) : super(key: key);

  @override
  State<StockLoanPage> createState() => _StockLoanPageState();
}

class _StockLoanPageState extends State<StockLoanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.menu_book_sharp,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    TextSpan(
                      text: "스탁론 안내",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ]),
                ),
                Text(
                  '국내 대형 증권사들과 금융기관이 제휴하여 출시한 투자 상품으로 '
                  '본인자금 포함 추가로 최대 150%(1.5배)까지 주식투자가 가능한 '
                  '대출 서비스 상품입니다. 수익률 극대화를 원하는 투자자, 주식 분할 '
                  '매수를 원하시는 투자자 분들이 주식 매입자금을 원할 때 쉽고 빠르게 '
                  '이용 가능합니다.',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
                ExpansionTile(
                  title: Text("계좌 운용 규칙 조회"),
                  initiallyExpanded: false,
                  children: [
                    Text('1. 일반적인 매매 및 금융 거래 규칙'),
                    Text("""※주문가능 유형 : 지정가만 가능
시장가 조건부지정가 최유리지정가 최우선지정가 /IOC/FOK 주문불가

- 거래 가능 종목
미국 3대 주식시장 (NYSE, NASDAQ, AMEX) 및 중국 상해, 심천거래소 그리고 홍콩 거래소 상장종목 주식 중 매수가능으로 지정된 종목 (매수 가능종목은 일별로 변동될 수 있으며 매수한 주식이 매수불가 종목으로 변동된 경우 추가 매수는 불가하며 매도만 가능)

- 거래 유형
증거금 100% 현금거래만 가능(신용거래, 공매도, 미수거래 예약매매 등 특수주문 불가)
"""),
                    Text('2. 스탁론 이용 계좌 담보비율 관리'),
                    Text("""- 매수 동결 제한
장중 담보비율이 로스컷 담보비율(140%) 미만으로 하락하는 경우 매수불가. 로스컷 담보비율 도달 시 매수 가능
로스컷(반대매매 ) 실행 후 담보비율이 로스컷 상환유예비율에 도달 하지 않는 경우 매수불가

- 반대매매
로스컷발생 담보비율 140% (예: 1천만원 대출 - 평가금액 1천 4백만원 이상 유지, 미달시 반대매매실행)
현금인출 담보비율 160% (예:1천만원 대출 - 평가금액 1천 6백만원 이상 일때 초과하는 금액만 인출가능)
"""),
                    Text('3. 거래가능 시간'),
                    Text("""- 매수 동결 제한
미국: 프리마켓 18:00 ~ 23:30 (서머타임 17:00 ~ 22:30) , 정규장 23:30 ~ 익일  06:00 (서머타임 22:30 ~ 익일 05:00) - 매수/매도 가능
중국: 동시호가 10:10 ~ 10:30 정규시장 오전장 10:30~12:30 오후장 14:00~16:00 - 매수/매도 가능
홍콩: 동시호가 10:00 ~ 10: 30 정규시장 오전장 10:30~13:00 오후장 14:00~17:00 CAS(장마감동시호가) 17:00~17:10
"""),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
