import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'RegisterStyle.dart';

class RegisterPage extends StatefulWidget {
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obsecureText = true;

  String email = '';
  String password = '';

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
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email Address",
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
              ),
              onChanged: (value) {
                email = value.toString().trim();
              },
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
                    color: Colors.black
                ),
                suffixIcon: IconButton(
                  onPressed: _toggle,
                  icon: Icon(
                    _obsecureText
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                    color: Theme.of(context).primaryColorDark,
                  )
                ),
              ),
              onChanged: (value) {
                password = value;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if(value!.trim().isEmpty){
                  return 'Please enter a password!';
                }
                if(value.trim().length < 8) {
                  return 'Password must be at least 8 characters';
                }
                return null;
              }
            ),

            SizedBox(height: 20.0), // <= Spacing

            //Button Sign Up
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () async {
                  print(email);
                  print(password);
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
