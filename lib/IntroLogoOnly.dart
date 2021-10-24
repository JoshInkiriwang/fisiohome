import 'package:FisioHome/OnBoarding/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LogoOnlyPage extends StatefulWidget {
  @override
  _LogoOnlyPageState createState() => _LogoOnlyPageState();
}

class _LogoOnlyPageState extends State<LogoOnlyPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OnBoarding())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/icons/logoFisiohome.png'),color: Colors.white,
    );
  }
}
