import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

String homepage = "https://blog.codefactory.ai";

class HomeScreen extends StatelessWidget {
  WebViewController? _controller; // 컨트롤러

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFF88),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Text('Code Factory',
                   style: TextStyle(color: Colors.black,),
                 ),
                Container(
                  padding:const EdgeInsets.all(5),
                ),
                Image.asset('assets/logo.png', height:60)
              ]
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  _controller?.loadUrl(homepage);
                },
                icon: const Icon(Icons.home, color: Colors.green,),
            )
          ],
        ),
        body: WebView(
            onWebViewCreated: (WebViewController controller) {
              _controller = controller;
            },
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: homepage,
        )
    ) ;
  }

}
