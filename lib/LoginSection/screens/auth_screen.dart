import 'package:FisioHome/LoginSection/widgets/auth_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _firebaseAuth = FirebaseAuth.instance;

  void submitAuthForm(
      {required String email,
      required String username,
      required String password,
      required bool isLogin}) async {
    try {
      if (isLogin) {
        //login
        await _firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        //register
        await _firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
      }
    } on FirebaseAuthException catch (e) {
      var message = e.message ?? 'Mohon periksa kembali data anda';
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(25),
            child: Column(
              children: [
                Text(
                  'Welcome',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: 25,
                ),
                AuthForm(
                  submitAuthFormFn: submitAuthForm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
