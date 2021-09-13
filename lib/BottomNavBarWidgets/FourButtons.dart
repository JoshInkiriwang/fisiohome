import 'package:apps/ActivityWidgets/HalamanKonsultasi.dart';
import 'package:apps/ActivityWidgets/HalamanLifestyle.dart';
import 'package:apps/ActivityWidgets/HalamanPaket.dart';
import 'package:apps/ActivityWidgets/HalamanVisit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanVisit()));
            },
            child: Image.asset('assets/icons/IconVisit.png'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPaket()));
            },
            child: Image.asset('assets/icons/IconPaket.png'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanLifestyle()));
            },
            child: Image.asset('assets/icons/IconLifestyle.png'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKonsultasi()));
            },
            child: Image.asset('assets/icons/IconKonsultasi.png'),
          ),
        ],
      );
  }
  
}