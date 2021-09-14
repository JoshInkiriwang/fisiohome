import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 3.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Color.fromRGBO(243, 247, 255, 100), width: 10),
          ),

          suffixIcon: Icon(Icons.search_rounded),
          filled: true,
          hintText: 'Search',
          fillColor: Colors.white,
          hintStyle: TextStyle(
            color: Color.fromRGBO(15, 15, 15, 100),
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}