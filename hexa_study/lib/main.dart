import 'package:flutter/material.dart';
import 'package:hexa_study/ScreenA.dart';
import 'package:hexa_study/ScreenB.dart';
import 'package:hexa_study/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' :(context) => ScreenA(),
        '/b' :(context) => ScreenB(),
        '/c' :(context) => ScreenC(),
      },
    );    
  }
}