
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
                Container(
                  height: 150.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              'https://www.rd.com/wp-content/uploads/2017/09/'
                              '01-shutterstock_476340928-Irina-Bg.jpg?'
                              'resize=1024,683'
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Edit Foto'),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Expanded(
                            child: Text('Ananda Setya Kinanthi',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(46, 46, 46, 100),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Color.fromRGBO(209, 209, 209, 100),
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
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Color.fromRGBO(209, 209, 209, 100),
                ),

                Container(
                  child: ListTile(
                    title: Text('Aktivitas Saya'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ],
            ),
        ),
    );
  }
}
