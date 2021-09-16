import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: 50,
          padding: EdgeInsets.all(3.5),
          width: MediaQuery.of(context).size.width*0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Icon(Icons.qr_code_scanner_outlined),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.1),
                  child: Container(color: Colors.black, width: 2)),
              Expanded(
                child: Text('   Rp. 200.000')
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.1),
                  child: Container(color: Colors.black, width: 2)),
              Expanded(
                child: Text('   172 Koin'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}