import 'package:FisioHome/ActivityWidgets/HalamanPaket.dart';
import 'package:FisioHome/ActivityWidgets/HalamanRiwayat.dart';
import 'package:FisioHome/ActivityWidgets/Lifestyle Path/personalFisioterapisPage.dart';
import 'package:FisioHome/ActivityWidgets/Lifestyle%20Path/EventPage.dart';
import 'package:FisioHome/BottomNavBarWidgets/ActivityPage/HalamanActivity.dart';
import 'package:FisioHome/BottomNavBarWidgets/ArticlePage/Detail%20Article.dart';
import 'package:FisioHome/BottomNavBarWidgets/ArticlePage/HalamanArticle.dart';
import 'package:FisioHome/BottomNavBarWidgets/ChatPage/HalamanChat.dart';
import 'package:FisioHome/BottomNavBarWidgets/HomePage/HalamanHome.dart';
import 'package:FisioHome/BottomNavBarWidgets/ProfilePage/HalamanProfile.dart';
import 'package:FisioHome/IntroLogoOnly.dart';
import 'package:FisioHome/LoginSection/screens/auth_screen.dart';
import 'package:FisioHome/OnBoarding/OnBoarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
        routes: {
          '/': (context) => LogoOnlyPage(),
          '/onboarding': (context) => OnBoarding(),
          '/login': (context) => AuthScreen(),
          // Register
          '/home': (context) => HalamanHome(),
          '/activitypage': (context) => HalamanActivity(),
          '/articlepage': (context) => HalamanArticle(),
          '/detailarticle': (context) => DetailArticle1(),
          '/chatpage': (context) => HalamanChat(),
          '/profilepage': (context) => HalamanProfile(),
          '/eventpage': (context) => EventPage(),
          '/personalfisioterapi': (context) => PersonalFisioterapisPage(),
          '/paketPage': (context) => HalamanPaket(),
          '/riwayatPage': (context) => HalamanRiwayat(),
        });
  }
}
