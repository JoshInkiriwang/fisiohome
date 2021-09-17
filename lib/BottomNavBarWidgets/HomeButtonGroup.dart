import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 328,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/icons/Scan.png')
          ),
        ],
      ),
    );
  }
}