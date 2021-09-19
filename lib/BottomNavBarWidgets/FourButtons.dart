import 'package:apps/ActivityWidgets/HalamanKonsultasi.dart';
import 'package:apps/ActivityWidgets/HalamanLifestyle.dart';
import 'package:apps/ActivityWidgets/HalamanPaket.dart';
import 'package:apps/ActivityWidgets/HalamanVisit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FourButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                    MaterialPageRoute(builder: (context) => HalamanVisit()));
              },
              child: Image.asset('assets/icons/IconVisit.png', alignment: Alignment.center),
            ),
            SizedBox(height: 5,),
            const Text('Visit', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
          ],
        ),
      ],
    );
  }
}