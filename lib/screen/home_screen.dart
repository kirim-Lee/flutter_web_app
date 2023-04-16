import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        ),
        body: const WebView(javascriptMode: JavascriptMode.unrestricted, initialUrl: "https://blog.codefactory.ai")
    ) ;
  }

}
