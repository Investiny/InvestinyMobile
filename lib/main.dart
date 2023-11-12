import 'package:flutter/material.dart';
import 'package:investinymobile/singin.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
        debugShowCheckedModeBanner: false,
    );
  }
}