import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Article',
    home: new HalamanArticle(),
  ));
}

class HalamanArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    const SnackBar(content: Text('This is a search button')));
              },
            ),
          ]),
      body: Text('text'),
    );
  }
}
