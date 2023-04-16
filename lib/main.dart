import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logo',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFFF88),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('assets/logo.png', width:200)]
                )
              ]
          ),
        )
      ),
    );
  }
}

