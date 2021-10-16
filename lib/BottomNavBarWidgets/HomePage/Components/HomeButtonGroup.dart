import 'package:FisioHome/BottomNavBarWidgets/HomePage/Components/QRScanner.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: GestureDetector(
                child: Image.asset('assets/icons/Scan.png',
                  width: 24.0, height: 24.0, color: Colors.black87,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QRScanner())
                  );
                },
              ),
              padding: EdgeInsets.only(left: 20.0, right: 5.0),
            ),
            VerticalDivider(
              color: Color.fromRGBO(197, 197, 197, 100),
              thickness: 0.7,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    child: Image.asset('assets/icons/wallet.png'),
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Padding(
                    child: Text('Rp.200.000', style: TextStyle(fontSize: 12,
                        fontFamily: 'Raleway'),),
                    padding: EdgeInsets.only(right: 25.0),
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: Color.fromRGBO(197, 197, 197, 100),
              thickness: 0.7,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    child: Image.asset('assets/icons/point.png'),
                    padding: EdgeInsets.only(left: 5.0,right: 10.0),
                  ),
                  Padding(
                    child: Text('172 koin', style: TextStyle(fontSize: 12,
                        fontFamily: 'Raleway'),),
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}