import 'package:FisioHome/IntroLogoOnly.dart';
import 'package:FisioHome/LoginSection/screens/auth_screen.dart';
import 'package:FisioHome/OnBoarding/OnBoarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'BottomNavBar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fisiohome',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => LogoOnlyPage(),
        '/onboarding': (BuildContext context) => OnBoarding(),
        '/authScreen': (BuildContext context) => StreamBuilder(
              builder: (context, authSnapshot) {
                if (authSnapshot.data == null) {
                  return AuthScreen();
                } else {
                  return BottomNav();
                }
              },
              stream: FirebaseAuth.instance.authStateChanges(),
            ),
      },
    );
  }
}
