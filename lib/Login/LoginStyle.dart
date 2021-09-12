import 'package:flutter/material.dart';

//Text Style
class LoginStyle {
  static var judul = TextStyle(
      fontSize: 24, color: LoginColor.warnaungu, fontWeight: FontWeight.w700);
  static var deskripsi =
      TextStyle(fontSize: 14, color: LoginColor.deskripsi_color);
  static var buttoninfo =
      TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700);
  static var belummendaftar = TextStyle(fontSize: 14, color: Colors.black);
  static var daftardisini = TextStyle(fontSize: 14,
      color: LoginColor.warnaungu, fontWeight: FontWeight.w500);
}

//Color
class LoginColor {
  static const judul_color = Color.fromRGBO(95, 37, 224, 100);
  static const deskripsi_color = Color.fromRGBO(15, 15, 15, 100);
  static const warnaungu = Color.fromRGBO(95, 37, 224, 100);
}
