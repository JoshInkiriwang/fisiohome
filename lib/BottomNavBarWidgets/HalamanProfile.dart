import 'package:FisioHome/ColorPalette.dart';
import 'package:flutter/material.dart';

import 'HomePage/Components/HomeButtonGroup.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Profile',
    home: new HalamanProfile(),
  ));
}

class HalamanProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text('Profile'),
          backgroundColor: Color.fromRGBO(95, 37, 224, 100),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/images/logoFisiohome.png'),
                    ],
                  ),
                ),
                const Divider(
                  height: 20,
               //   thickness: 5,
                  indent: 20,
                  endIndent: 20,
                ),
                Container(
                  height: 100.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      HomeButtonGroup(),
                    ],
                  ),
                ),

                const Divider(
                  height: 20,
                  indent: 20,
                  endIndent: 20,
                ),

                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text('Below'),
                    ),
                  ),
                ),
              ],
            ),
        ),
    );
  }
}
