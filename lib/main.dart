import 'package:flutter/material.dart';
import 'package:trufit/UI/onboard/on_board1.dart';
import 'package:trufit/UI/onboard/on_board2.dart';
import 'package:trufit/UI/onboard/on_board3.dart';
import 'package:trufit/UI/onboard/on_board4.dart';
import 'package:trufit/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TruFit',
      theme: getTheme(context),
      home: OnBoard1(),
      routes: {
        '/on_board1': (context) => OnBoard1(),
        '/on_board2': (context) => OnBoard2(),
        '/on_board3': (context) => OnBoard3(),
        '/on_board4': (context) => OnBoard4(),
      },
    );
  }
  ThemeData getTheme(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.green,
    );
  }
}