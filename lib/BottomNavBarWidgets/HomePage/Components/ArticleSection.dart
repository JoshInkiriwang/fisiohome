import 'package:FisioHome/BottomNavBarWidgets/ArticlePage/HalamanArticle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Artikel Terbaru',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Raleway',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 145),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HalamanArticle())),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Raleway',
                        color: Color.fromRGBO(95, 37, 224, 100)),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 5.0, right: 10.0),
            child: Article1(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 5.0, right: 10.0),
            child: Article2(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 5.0, right: 10.0),
            child: Article3(),
          ),
        ],
      ),
    );
  }
}
