import 'package:apps/Login/LoginStyle.dart';
import 'package:apps/Register/RegisterPage.dart';
import 'package:apps/BottomNavBar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    new MaterialApp(
      home: LoginPage(),
      theme: ThemeData(fontFamily: 'Raleway'),
    ),
  );
}

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obsecureText = true;

  String password = '';
  String email = '';

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.0), // <= Spacing
            //Judul
            Text(
              'Selamat Datang',
              style: LoginStyle.judul,
            ),
            SizedBox(height: 10.0), // <= Spacing
            //Deskripsi
            Text(
              'Isi informasi dibawah ini untuk Login',
              style: LoginStyle.deskripsi,
            ),
            SizedBox(height: 20.0), // <= Spacing

            //FormField (Email)
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),

            ),
            SizedBox(height: 20.0), // <= Spacing
            //FormField (Password)
            TextFormField(
                obscureText: _obsecureText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter your password",
                    suffixIcon: IconButton(
                        onPressed: _toggle,
                        icon: Icon(
                          _obsecureText
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                          color: Theme.of(context).primaryColorDark,
                        )))),
            SizedBox(height: 20.0), // <= Spacing
            //Button Login
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNav()));
                },
                child: Text(
                  'Login',
                  style: LoginStyle.buttoninfo, //Text Color
                ),
                style: TextButton.styleFrom(
                  backgroundColor: LoginColor.warnaungu, //Button Color
                ),
              ),
            ),
            SizedBox(height: 20.0),
            RichText(
                text: new TextSpan(children: [
              new TextSpan(
                text: 'Belum Mendaftar ? ',
                style: LoginStyle.belummendaftar,
              ),
              new TextSpan(
                text: 'Daftar disini',
                style: LoginStyle.daftardisini,
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
