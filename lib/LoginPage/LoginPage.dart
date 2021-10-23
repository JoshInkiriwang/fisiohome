import 'package:FisioHome/BottomNavBar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _pwdCtrl = TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Login'),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailCtrl,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: TextFormField(
                  controller: _pwdCtrl,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),

              Container(
                height: 40.0,
                width: MediaQuery.of(context).size.width/3,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    print(_emailCtrl.text);
                    print(_pwdCtrl.text);
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => BottomNav()));
                  },
                  child: Text('Login', style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
