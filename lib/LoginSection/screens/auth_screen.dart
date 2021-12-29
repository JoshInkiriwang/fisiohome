import 'package:FisioHome/LoginSection/widgets/auth_form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firebaseFirestore = FirebaseFirestore.instance;

  void submitAuthForm(
      {required String email,
      required String fullName,
      required String password,
      required bool isLogin}) async {
    try {
      UserCredential userCredential;
      if (isLogin) {
        //login
        userCredential = await _firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        //register
        userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
        if (userCredential.user != null) {
          await _firebaseFirestore
              .collection('users')
              .doc(userCredential.user!.uid)
              .set({'fullName': fullName, 'email': email});
        }
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
                  'Selamat Datang',
                  style: TextStyle(
                    color: Color.fromRGBO(95, 37, 224, 100),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Isi informasi dibawah ini dengan benar',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Raleway',
                  ),
                ),
                SizedBox(
                  height: 35,
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
