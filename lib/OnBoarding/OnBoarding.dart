import 'package:FisioHome/BottomNavBar.dart';
import 'OnBoardingStyle.dart';
import 'package:flutter/material.dart';
import 'Context.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(new MaterialApp(
    home: new OnBoarding(),
  ));
}

class OnBoarding extends StatelessWidget {

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('assets/images/Slider1.jpg'),
        title: Context.Header1,
        body: Context.SubHeader1,
        decoration: OnBoardingTextStyle.decorationStyle,
      ),
      PageViewModel(
        image: Image.asset('assets/images/Slider2.jpg'),
        title: Context.Header2,
        body: Context.SubHeader2,
        decoration: OnBoardingTextStyle.decorationStyle,
      ),
      PageViewModel(
        image: Image.asset('assets/images/Slider3.jpg'),
        title: Context.Header3,
        body: Context.SubHeader3,
        decoration: OnBoardingTextStyle.decorationStyle,
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

            //Background keseluruhan
            globalBackgroundColor: Colors.white,

            //Skip Button
            showSkipButton: true,
            skipColor: OnBoardingColor.lewatiBtnColor,

            //Next Button
            showNextButton: true,
            nextColor: OnBoardingColor.nextBtnColor,

            //DoneButton
            showDoneButton: true,
            doneColor: OnBoardingColor.doneBtnColor,

            done: Text('Selesai', style: OnBoardingBtnStyle.nextdoneBtnStyle,),
            onDone: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => BottomNav()));
            },

            next: Text('Lanjut', style: OnBoardingBtnStyle.nextdoneBtnStyle,),

            skip: Text('Lewati', style: OnBoardingBtnStyle.skipBtnStyle,),
            onSkip: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => BottomNav()));
            },

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