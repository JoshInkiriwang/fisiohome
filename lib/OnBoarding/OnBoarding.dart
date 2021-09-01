import 'package:apps/Login/LoginPage.dart';
import 'OnBoardingColor.dart';
import 'package:flutter/material.dart';
import 'Context.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    home: new OnBoarding(),
  ));
}

class OnBoarding extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('images/Slider1.jpg'),
        title: Context.Header1,
        body: Context.SubHeader1,
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            color: OnBoardingColor.titleColor,
            fontWeight: FontWeight.w700,
            fontSize: 18,
            wordSpacing: -0.3,
          ),
          bodyTextStyle: TextStyle(
            color: OnBoardingColor.descriptionColor,
            fontSize: 15,
            wordSpacing: -0.3,
          ),
        ),
      ),
      PageViewModel(
        image: Image.asset('images/Slider2.jpg'),
        title: Context.Header2,
        body: Context.SubHeader2,
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            color: OnBoardingColor.titleColor,
            fontWeight: FontWeight.w700,
            fontSize: 18,
            wordSpacing: -0.3,
          ),
          bodyTextStyle: TextStyle(
            color: OnBoardingColor.descriptionColor,
            fontSize: 15,
            wordSpacing: -0.3,
          ),
        ),
      ),
      PageViewModel(
        image: Image.asset('images/Slider3.jpg'),
        title: Context.Header3,
        body: Context.SubHeader3,
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            color: OnBoardingColor.titleColor,
            fontWeight: FontWeight.w700,
            fontSize: 18,
            wordSpacing: -0.3,
          ),
          bodyTextStyle: TextStyle(
            color: OnBoardingColor.descriptionColor,
            fontSize: 15,
            wordSpacing: -0.3,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
      body: IntroductionScreen(
        //Info PageViewModel
        pages: getPages(),

        //DoneButton
        showDoneButton: true,
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        done: Text(
          'Selesai',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        doneColor: OnBoardingColor.doneBtnColor,
        showNextButton: true,
        next: Text(
          'Lanjut',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        nextColor: OnBoardingColor.nextBtnColor,

        //Skip Button
        showSkipButton: true,
        skip: Text(
          'Lewati',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        skipColor: OnBoardingColor.lewatiBtnColor,
        onSkip: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        //Background keseluruhan
        globalBackgroundColor: Colors.white,

        //Dot Indicator Style
        dotsDecorator: DotsDecorator(
          activeSize: Size.square(20.0),
          size: Size.square(10.0),
          activeColor: OnBoardingColor.dotActiveColor,
          color: OnBoardingColor.dotColor,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        ),
      ),
    ));
  }
}
