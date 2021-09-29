import 'package:FisioHome/Login/LoginStyle.dart';
import 'package:FisioHome/Register/RegisterPage.dart';
import 'package:FisioHome/BottomNavBar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';

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

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

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
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email Address",
                hintText: "Enter your email address",
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => EmailValidator.validate(value!) ? null : 'Please enter a valid email',
            ),

            SizedBox(height: 20.0), // <= Spacing

            //FormField (Password)
            TextFormField(
              controller: pwdController,
              obscureText: _obsecureText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                hintText: "Enter your password",
                prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                ),
                suffixIcon: IconButton(
                    onPressed: _toggle,
                    icon: Icon(
                      _obsecureText
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded,
                      color: Theme.of(context).primaryColorDark,
                    ),
                ),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if(value!.trim().isEmpty){
                  return 'Please enter a password !';
                }
                if(value.trim().length < 8) {
                  return 'Password must be at least 8 characters in length';
                }
                return null;
              },
            ),

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
                    Navigator.push(
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
