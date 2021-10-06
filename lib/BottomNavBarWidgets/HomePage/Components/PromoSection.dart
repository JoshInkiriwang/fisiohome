import 'package:FisioHome/BottomNavBarWidgets/ArticlePage/HalamanArticle.dart';
import 'package:flutter/material.dart';

class PromoSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Promo Fisiohome',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 5.0, right: 10.0),
            child: Article1(),
          ),
        ],
      ),
    );
  }
}
