import 'package:FisioHome/BottomNavBarWidgets/HomePage/ArticleSection.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/FourButtons.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/HomeButtonGroup.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/SearchBar.dart';

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
                alignment: Alignment(0, -0.995),
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
                padding: EdgeInsets.fromLTRB(20, 380, 10, 0),
                child: ArticleSection(),
              ),
              /*Container(
                child: PromoSection(),
              ),*/
            ],
          ),
       ),
    )));
  }
}
