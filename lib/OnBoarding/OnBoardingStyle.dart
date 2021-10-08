import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingColor {
  static const dotColor = Color.fromRGBO(196, 196, 196, 100);
  static const dotActiveColor = Color.fromRGBO(95, 37, 224, 100);
  static const titleColor = Color.fromRGBO(95, 37, 224, 100);
  static const descriptionColor = Color.fromRGBO(15, 15, 15, 100);
  static const lewatiBtnColor = Color.fromRGBO(15, 15, 15, 100);
  static const nextBtnColor = Color.fromRGBO(95, 37, 224, 100);
  static const doneBtnColor = Color.fromRGBO(95, 37, 224, 100);
}

class OnBoardingTextStyle {
  static const decorationStyle = const PageDecoration(
      titleTextStyle: OnBoardingTextStyle.titleTextStyle,
      bodyTextStyle: OnBoardingTextStyle.descriptionTextStyle
  );

  static const titleTextStyle = TextStyle(
    color: OnBoardingColor.titleColor,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    wordSpacing: -0.3,
    fontFamily: 'Raleway',
  );

  static const descriptionTextStyle = TextStyle(
    color: OnBoardingColor.descriptionColor,
    fontSize: 15,
    wordSpacing: -0.3,
    fontWeight: FontWeight.w500,
    fontFamily: 'Raleway',
    height: 1.9,
  );
}

class OnBoardingBtnStyle {
  static const nextdoneBtnStyle = TextStyle(
    fontSize: 20,
    wordSpacing: -0.3,
    fontWeight: FontWeight.w700,
    fontFamily: 'Raleway',
  );

  static const skipBtnStyle = TextStyle(
    fontSize: 20,
    wordSpacing: -0.3,
    fontWeight: FontWeight.w500,
    fontFamily: 'Raleway',
  );
}
