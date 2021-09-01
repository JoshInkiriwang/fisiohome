import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Lifestyle',
    home: new HalamanLifestyle(),
  ));
}

class HalamanLifestyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text('Lifestyle'),
          backgroundColor: Color.fromRGBO(95, 37, 224, 100),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Center(
              child: new Text('Ini halaman Lifestyle.'),
            )));
  }
}
