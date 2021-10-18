import 'package:FisioHome/BottomNavBarWidgets/ActivityPage/ActivityPageColor.dart';
import 'package:FisioHome/BottomNavBarWidgets/ActivityPage/ActivityPageTextStyle.dart';
import 'package:FisioHome/ColorPalette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Lifestyle',
    home: new HalamanLifestyle(),
  ));
}

class HalamanLifestyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          onPressed: () {},
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
        onTap: () {},
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
          onPressed: () {},
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
        onTap: () {},
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
          onPressed: () {},
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
        onTap: () {},
      ),
    );
  }
}
