import 'package:apps/BottomNavBarWidgets/HomeButtonGroup.dart';
import 'package:apps/BottomNavBarWidgets/SearchBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
  ));
}

class HalamanHome extends StatefulWidget {
  _HalamanHomeState createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment(0, -0.995),
              child: Image.asset('assets/images/HomePage.jpg',scale: 0.9)
            ),
            Container(
              alignment: Alignment.topCenter,
              child: SearchBar(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 210, 10, 300),
              child: HomeButtonGroup(),
            )
          ],
        ),
      ),
    );
  }
}
