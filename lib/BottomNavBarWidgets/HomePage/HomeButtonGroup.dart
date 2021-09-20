import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: IntrinsicHeight(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Foo'),
            VerticalDivider(
              color: Color.fromRGBO(197, 197, 197, 100),
              thickness: 0.5,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Text('Ble'),
            VerticalDivider(
              color: Color.fromRGBO(197, 197, 197, 100),
              thickness: 0.5,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Text('Boo'),
          ],
        ),
      ),
    );
  }
}