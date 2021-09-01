import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Konsultasi',
    home: new HalamanKonsultasi(),
  ));
}

class HalamanKonsultasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text('Konsultasi'),
          backgroundColor: Color.fromRGBO(95, 37, 224, 100),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Center(
              child: new Text('Ini halaman konsultasi.'),
            )));
  }
}