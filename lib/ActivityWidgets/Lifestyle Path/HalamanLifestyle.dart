import 'package:FisioHome/ActivityWidgets/Lifestyle%20Path/personalFisioterapisPage.dart';
import 'package:FisioHome/BottomNavBarWidgets/ActivityPage/ActivityPageColor.dart';
import 'package:FisioHome/BottomNavBarWidgets/ActivityPage/ActivityPageTextStyle.dart';
import 'package:FisioHome/ColorPalette.dart';
import 'package:flutter/material.dart';

import 'EventPage.dart';
import 'MassagePage.dart';

class HalamanLifestyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Image.asset('assets/icons/logoFisiohome2.png'),
        ),
        title: new Text('Lifestyle'),
        backgroundColor: ColorPalette.appBarColor,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
        children: <Widget>[
          CardMassage(),
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: CardPersonalFisioterapis(),
          ),
          CardEvent(),
        ],
      ),
    );
  }
}

//Card for Lifestyle Page
/*
ActivityPageColor dan ActivityPageTextStyle digunakan kembali
karena ada kesamaan dengan card yang ada di halaman Lifestyle.
*/

class CardMassage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        minVerticalPadding: 26.0,
        leading: ElevatedButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MassagePage()),
          ),
          child: Image.asset('assets/icons/IconMassage.png'),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(14),
            primary: ActivityPageColor.blendingCircleBorder,
          ),
        ),
        title: Text('Massage', style: ActivityPageTextStyle.titlecard),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => MassagePage()),
        ),
      ),
    );
  }
}

class CardPersonalFisioterapis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        minVerticalPadding: 26.0,
        leading: ElevatedButton(
          onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => PersonalFisioterapisPage()),
          ),
          child: Image.asset('assets/icons/IconPersonalFisioterapis.png'),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(14),
            primary: ActivityPageColor.blendingCircleBorder,
          ),
        ),
        title: Text('Personal Fisioterapis', style: ActivityPageTextStyle.titlecard),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => PersonalFisioterapisPage()),
        ),
      ),
    );
  }
}

class CardEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        minVerticalPadding: 26.0,
        leading: ElevatedButton(
          onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => EventPage()),
          ),
          child: Image.asset('assets/icons/IconEvent.png'),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(14),
            primary: ActivityPageColor.blendingCircleBorder,
          ),
        ),
        title: Text('Event/Acara', style: ActivityPageTextStyle.titlecard),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => EventPage()),
        ),
      ),
    );
  }
}
