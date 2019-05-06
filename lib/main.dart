import 'package:flutter/material.dart';
import 'package:oneframe/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Segment Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: LoginScreen()),
    );
  }
}
