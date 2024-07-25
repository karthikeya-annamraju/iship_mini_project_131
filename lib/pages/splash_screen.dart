// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:chat_app/pages/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode([]);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GetStarted()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/chat.png', height: 100),
            ],),
          SizedBox(height: 50,),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

