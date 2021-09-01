import 'package:apps/BottomNavBarWidgets/ActivityPageTextStyle.dart';
import 'package:apps/ColorPalette.dart';
import 'package:flutter/material.dart';
import '../ActivityWidgets/HalamanVisit.dart';
import '../ActivityWidgets/HalamanPaket.dart';
import '../ActivityWidgets/HalamanKonsultasi.dart';
import '../ActivityWidgets/HalamanLifestyle.dart';
import '../ActivityWidgets/HalamanRiwayat.dart';
import 'ActivityPageColor.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    home: new HalamanActivity(),
  ));
}

class HalamanActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aktivitas Saya',
          style: ActivityPageTextStyle.AppBar_Aktivitas,
        ),
        backgroundColor: ColorPalette.appBarColor,
      ),
      body: ListView(
        children: [
          CardVisit(),
          CardPaket(),
          CardKonsultasi(),
          CardLifestyle(),
          CardRiwayat(),
        ],
      ),
    );
  }
}
//padding: EdgeInsets.fromLTRB(left, top, right, bottom);

//Cards
class CardVisit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: MaterialButton(
          onPressed: () {},
          color: ActivityPageColor.blendingCircleBorder,
          child: Image.asset('icons/IconVisit.png'),
          padding: EdgeInsets.all(16),
          shape: CircleBorder(),
        ),
        title: Text('Visit', style: ActivityPageTextStyle.titlecard),
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        subtitle: Text('xxxxxx', style: ActivityPageTextStyle.subtitlecard),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HalamanVisit())),
      ),
    );
  }
}

class CardPaket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: MaterialButton(
          onPressed: () {},
          color: ActivityPageColor.blendingCircleBorder,
          child: Image.asset('icons/IconPaket.png'),
          padding: EdgeInsets.all(16),
          shape: CircleBorder(),
        ),
        title: Text('Paket', style: ActivityPageTextStyle.titlecard),
        trailing: Icon(Icons.arrow_forward_ios_sharp,
            color: ActivityPageColor.ArrowForwardColor),
        subtitle: Text('xxxxxx', style: ActivityPageTextStyle.subtitlecard),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HalamanPaket())),
      ),
    );
  }
}

class CardKonsultasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: MaterialButton(
          onPressed: () {},
          color: ActivityPageColor.blendingCircleBorder,
          child: Image.asset('icons/IconKonsultasi.png'),
          padding: EdgeInsets.all(16),
          shape: CircleBorder(),
        ),
        title: Text('Konsultasi', style: ActivityPageTextStyle.titlecard),
        trailing: Icon(Icons.arrow_forward_ios_sharp,
            color: ActivityPageColor.ArrowForwardColor),
        subtitle: Text('xxxxxx', style: ActivityPageTextStyle.subtitlecard),
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => HalamanKonsultasi())),
      ),
    );
  }
}

class CardLifestyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: MaterialButton(
          onPressed: () {},
          color: ActivityPageColor.blendingCircleBorder,
          child: Image.asset('icons/IconLifestyle.png'),
          padding: EdgeInsets.all(16),
          shape: CircleBorder(),
        ),
        title: Text('Lifestyle', style: ActivityPageTextStyle.titlecard),
        trailing: Icon(Icons.arrow_forward_ios_sharp,
            color: ActivityPageColor.ArrowForwardColor),
        subtitle: Text('xxxxxx', style: ActivityPageTextStyle.subtitlecard),
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => HalamanLifestyle())),
      ),
    );
  }
}

class CardRiwayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: MaterialButton(
          onPressed: () {},
          color: ActivityPageColor.blendingCircleBorder,
          child: Image.asset('icons/IconRiwayat.png'),
          padding: EdgeInsets.all(16),
          shape: CircleBorder(),
        ),
        title: Text('Riwayat', style: ActivityPageTextStyle.titlecard),
        trailing: Icon(Icons.arrow_forward_ios_sharp,
            color: ActivityPageColor.ArrowForwardColor),
        subtitle: Text('xxxxxx', style: ActivityPageTextStyle.subtitlecard),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HalamanRiwayat())),
      ),
    );
  }
}
