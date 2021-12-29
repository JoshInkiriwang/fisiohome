import 'package:flutter/material.dart';

class DetailArticle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/DetailArtikel1.jpg',
                  scale: 0.9,
                ),
                Container(
                  padding: EdgeInsets.only(left: 260.0, top: 230.0),
                  child: Text(
                    '24 Agustus 2021',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(150, 150, 150, 100),
                      fontFamily: 'Raleway',
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25.0, top: 270.0),
                  child: Text(
                    'XXXXXXXXXXXXXXXXXXXX',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25.0, top: 320.0, right: 25.0),
                  child: Text(
                    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
                    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                    style: TextStyle(
                      color: Color.fromRGBO(105, 60, 200, 100),
                      fontFamily: 'Raleway',
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
