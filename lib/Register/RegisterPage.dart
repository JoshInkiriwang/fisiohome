import 'package:flutter/material.dart';
import 'RegisterStyle.dart';

class RegisterPage extends StatefulWidget {
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0), // <= Spacing
            //Judul
            Text(
              'Selamat Datang',
              style: RegisterStyle.judul,
            ),
            SizedBox(height: 20.0), // <= Spacing
            //Deskripsi
            Text(
              'Isi informasi dibawah ini untuk Sign Up',
              style: RegisterStyle.deskripsi,
            ),
            SizedBox(height: 20.0),
            //FormField (Email)
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Email Address")),
            SizedBox(height: 20.0), // <= Spacing
            //FormField (Password)
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password")),
            SizedBox(height: 20.0), // <= Spacing
            //Button Login
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  print('Sign Up Pressed');
                },
                child: Text(
                  'Sign Up',
                  style: RegisterStyle.buttoninfo, //Text Color
                ),
                style: TextButton.styleFrom(
                  backgroundColor: RegisterColor.button_color, //Button Color
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
