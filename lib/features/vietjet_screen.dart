import 'package:flutter/material.dart';
import 'package:payment_sdk/home_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VietjetScreen extends StatelessWidget {
  static const routePath = '/vj/vietjet';
  const VietjetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Wellcome ietjet'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePaymentScreen.routePath);
                },
                icon: Icon(Icons.payment))
          ],
        ),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://www.vietjetair.com/vi',
        ));
  }
}