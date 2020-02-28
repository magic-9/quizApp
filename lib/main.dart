import 'package:flutter/material.dart';
import 'package:quiz/pages/quiz_page.dart';
import 'package:quiz/pages/splash_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/home" : (context)=> SplashPage(),
        "/quiz": (context)=> QuizPage(),
      },
    );
  }
}
