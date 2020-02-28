import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
        (){
        Navigator.of(context).pushReplacementNamed("/quiz");
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
                "Quiz App",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}

