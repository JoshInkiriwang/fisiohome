import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/ArticleSection.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/FourButtons.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/HomeButtonGroup.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/Promo/PromoSection.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/SearchBar.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway', backgroundColor: Colors.black26),
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
        body: SafeArea(
          child: SingleChildScrollView(
            child : Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/HomePage.jpg',scale: 0.9)
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: SearchBar(),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 220, 25, 0),
                  child: HomeButtonGroup(),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 280, 10, 0),
                  child: FourButton(),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 390, 10, 0),
                  child: ArticleSection(),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 1380, 10, 0),
                  child: PromoSection(),
                ),
              ],
            ),
         ),
    )));
  }
}
