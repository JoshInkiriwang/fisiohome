import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Home',
    home: new HalamanHome(),
  ));
}

class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchField(),
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 3.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  suffixIcon: Icon(Icons.search_rounded),
                  filled: true,
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(15, 15, 15, 100),
                      fontFamily: 'Raleway',
                      fontSize: 14),
                  hintText: 'Search',
                  fillColor: Colors.white70),
            )));
  }
}

class FourButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
