import 'package:FisioHome/BottomNavBarWidgets/ArticlePage/Detail%20Article.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Article',
    home: new HalamanArticle(),
    theme: ThemeData(fontFamily: 'Raleway'),
  ));
}

class HalamanArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              title: new Text('Article'),
              backgroundColor: Color.fromRGBO(95, 37, 224, 100),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search_outlined),
                  tooltip: 'Search',
                  iconSize: 30,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('This is a search buttons')));
                  },
                ),
              ]),
          body: ListView(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            children: [
              Article1(),
              SizedBox(height: 5),
              InkWell(
                child: Article2(),
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Article2 Pressed'))),
              ),
              SizedBox(height: 5),
              InkWell(
                child: Article3(),
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Article3 Pressed'))),
              ),
              SizedBox(height: 5),
              InkWell(
                child: Article4(),
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Article4 Pressed'))),
              ),
            ],
          ),
        ),
    );
  }
}

class Article1 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailArticle1()),
      ),
      child: Card(
        elevation: 3.0,
        child: Column(
          children: [
            SizedBox(
              width: 10000,
              child: Image.asset('assets/images/Artikel1.jpg', fit: BoxFit.cover,),
            ),
            SizedBox(height: 5.0),
            Align(
              alignment: Alignment(0.96, 0),
              child: PopupMenuButton<int> (
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text('Share'), value: 1,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left : 15.0,right: 15.0,bottom: 10.0),
              alignment: AlignmentDirectional.centerStart,
              child: Text('XXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)
              ),
            ),
            Container(
              padding: EdgeInsets.only(left : 15.0,right: 15.0,bottom: 10.0),
              alignment: AlignmentDirectional.centerStart,
              child: Text('01 Oktober 2021', style: TextStyle(fontSize: 13,
                  color: Color.fromRGBO(150, 150, 150, 100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Article2 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          SizedBox(
            width: 10000,
            child: Image.asset('assets/images/Artikel2.jpg', fit: BoxFit.cover,),
          ),
          SizedBox(height: 5.0),
          Align(
            alignment: Alignment(0.96, 0),
            child: PopupMenuButton<int> (
              itemBuilder: (context) => [
                PopupMenuItem(child: Text('Share'), value: 1,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left : 15.0,right: 15.0,bottom: 10.0),
            alignment: AlignmentDirectional.centerStart,
            child: Text('XXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)
            ),
          ),
          Container(
            padding: EdgeInsets.only(left : 15.0,right: 15.0,bottom: 10.0),
            alignment: AlignmentDirectional.centerStart,
            child: Text('24 September 2021', style: TextStyle(fontSize: 13,
                color: Color.fromRGBO(150, 150, 150, 100)),
            ),
          ),
        ],
      ),
    );
  }
}

class Article3 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          SizedBox(
            width: 10000,
            child: Image.asset('assets/images/Artikel3.jpg', fit: BoxFit.cover,),
          ),
          SizedBox(height: 5.0),
          Align(
            alignment: Alignment(0.96, 0),
            child: PopupMenuButton<int> (
              itemBuilder: (context) => [
                PopupMenuItem(child: Text('Share'), value: 1,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left : 15.0,right: 15.0,bottom: 10.0),
            alignment: AlignmentDirectional.centerStart,
            child: Text('XXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)
            ),
          ),
          Container(
            padding: EdgeInsets.only(left : 15.0,right: 15.0,bottom: 10.0),
            alignment: AlignmentDirectional.centerStart,
            child: Text('08 September 2021', style: TextStyle(fontSize: 13,
                color: Color.fromRGBO(150, 150, 150, 100)),
            ),
          ),
        ],
      ),
    );
  }
}

class Article4 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          SizedBox(
            width: 10000,
            child: Image.asset('assets/images/Artikel4.jpg', fit: BoxFit.cover,),
          ),
          SizedBox(height: 5.0),
          Align(
            alignment: Alignment(0.9, 0),
            child: Icon(Icons.more_horiz),
          ),
          Container(
            padding: EdgeInsets.only(left : 15.0, top: 10.0,right: 15.0,bottom: 10.0),
            alignment: AlignmentDirectional.centerStart,
            child: Text('XXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)
            ),
          ),
          Container(
            padding: EdgeInsets.only(left : 15.0,right: 15.0,bottom: 10.0),
            alignment: AlignmentDirectional.centerStart,
            child: Text('24 Agustus 2021', style: TextStyle(fontSize: 13,
                color: Color.fromRGBO(150, 150, 150, 100)),
            ),
          ),
        ],
      ),
    );
  }
}

