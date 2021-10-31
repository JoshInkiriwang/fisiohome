import 'package:FisioHome/IntroLogoOnly.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fisiohome',
      home: LogoOnlyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}