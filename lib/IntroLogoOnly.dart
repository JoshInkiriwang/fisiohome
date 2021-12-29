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
    Timer(Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, '/onboarding'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/icons/logoFisiohome.png',
        scale: 0.85,
      ),
      color: Colors.white,
    );
  }
}
