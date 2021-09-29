import 'package:FisioHome/ActivityWidgets/HalamanKonsultasi.dart';
import 'package:FisioHome/ActivityWidgets/HalamanLifestyle.dart';
import 'package:FisioHome/ActivityWidgets/HalamanPaket.dart';
import 'package:FisioHome/ActivityWidgets/HalamanVisit.dart';
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
                    fixedSize: Size(53.0, 53.0)
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanVisit()));
                },
                child: Image.asset('assets/icons/IconVisit.png', alignment: Alignment.center),
              ),
              SizedBox(height: 5,),
              const Text('Visit', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
            ],
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 2.0,
                    fixedSize: Size(53.0, 53.0)
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanPaket()));
                },
                child: Image.asset('assets/icons/IconPaket.png', alignment: Alignment.center),
              ),
              SizedBox(height: 5,),
              const Text('Paket', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
            ],
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 2.0,
                    fixedSize: Size(53.0, 53.0)
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanLifestyle()));
                },
                child: Image.asset('assets/icons/IconLifestyle.png', alignment: Alignment.center),
              ),
              SizedBox(height: 5,),
              const Text('Lifestyle', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
            ],
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 2.0,
                    fixedSize: Size(53.0, 53.0)
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanKonsultasi()));
                },
                child: Image.asset('assets/icons/IconKonsultasi.png', alignment: Alignment.center),
              ),
              SizedBox(height: 5,),
              const Text('Konsultasi', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
            ],
          ),
        ],
      ));
  }
}