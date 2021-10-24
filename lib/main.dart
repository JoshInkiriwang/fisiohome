import 'package:flutter/material.dart';
import 'package:FisioHome/IntroLogoOnly.dart';

void main() {
  runApp(FisiohomeApp());
}

class FisiohomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fisiohome',
      home: LogoOnlyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}