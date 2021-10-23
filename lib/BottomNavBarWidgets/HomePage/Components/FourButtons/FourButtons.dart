import 'package:FisioHome/ActivityWidgets/HalamanKonsultasi.dart';
import 'package:FisioHome/ActivityWidgets/Lifestyle%20Path/HalamanLifestyle.dart';
import 'package:FisioHome/ActivityWidgets/HalamanPaket.dart';
import 'package:FisioHome/ActivityWidgets/Visit%20Path/HalamanVisit.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/FourButtons/FourButtonsStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FourButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: 'Raleway',
      ),
      child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Tombol Visit
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 2.0,
                  fixedSize: Size(55.0, 65.0),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanVisit()));
                },

                child: Image.asset('assets/icons/IconVisit.png',
                  alignment: Alignment.center, scale: 0.8
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text('Visit', style: FourButtonsStyle.btnTextStyle),
              ),
            ],
          ),

          // Tombol Paket
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 2.0,
                  fixedSize: Size(55.0, 65.0),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanPaket()));
                },

                child: Image.asset('assets/icons/IconPaket.png',
                    alignment: Alignment.center, scale: 0.8
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text('Paket', style: FourButtonsStyle.btnTextStyle),
              ),
            ],
          ),

          // Tombol Lifestyle
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 2.0,
                  fixedSize: Size(55.0, 65.0),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanLifestyle()));
                },

                child: Image.asset('assets/icons/IconLifestyle.png',
                    alignment: Alignment.center, scale: 0.8
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text('Lifestyle', style: FourButtonsStyle.btnTextStyle),
              ),
            ],
          ),

          // Tombol Konsultasi
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 2.0,
                  fixedSize: Size(55.0, 65.0),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanKonsultasi()));
                },

                child: Image.asset('assets/icons/IconKonsultasi.png',
                    alignment: Alignment.center, scale: 0.8
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text('Konsultasi', style: FourButtonsStyle.btnTextStyle),
              ),
            ],
          ),
        ],
      ));
  }
}