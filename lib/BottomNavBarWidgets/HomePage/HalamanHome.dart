import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/ArticleSection.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/FourButtons/FourButtons.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/HomeButtonGroup.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/Promo/PromoSection.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/SearchBar.dart';

import 'package:flutter/material.dart';

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
            child : Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: AlignmentDirectional.topCenter,
                    clipBehavior: Clip.none,

                    children: <Widget>[
                      Container(
                        height: 226,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/images/HomePage.jpg', fit: BoxFit.cover,),
                      ),
                      SearchBar(),
                      Positioned(
                        top: 200,
                        child: HomeButtonGroup(),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 45.0, bottom: 35.0),
                  child: FourButton(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 10.0, bottom: 30.0),
                  child: ArticleSection(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 10.0),
                  child: PromoSection(),
                ),
              ],
            ),
         ),
        ),
      ),
    );
  }
}
