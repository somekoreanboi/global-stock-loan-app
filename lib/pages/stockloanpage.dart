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
    return SafeArea(
      child: const WebView(
        initialUrl: 'https://capital.miraeasset.com/ib20/mnu/BCWCOMM000020',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
