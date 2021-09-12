import 'package:apps/BottomNavBarWidgets/SearchBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
  ));
}

class HalamanHome extends StatefulWidget {
  _HalamanHomeState createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/HomePage.jpg', fit: BoxFit.contain,),
          ClipRect(
            child: Container(
              child: SearchBar(),
            ),
          )
        ],
      ),
    );
  }
}
