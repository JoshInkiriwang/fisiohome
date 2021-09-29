import 'ActivityPageTextStyle.dart';
import 'package:FisioHome/ColorPalette.dart';
import 'package:flutter/material.dart';
import '../../ActivityWidgets/HalamanVisit.dart';
import '../../ActivityWidgets/HalamanPaket.dart';
import '../../ActivityWidgets/HalamanKonsultasi.dart';
import '../../ActivityWidgets/HalamanLifestyle.dart';
import '../../ActivityWidgets/HalamanRiwayat.dart';
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
        padding: EdgeInsets.only(left: 15, right: 15),
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
        leading: ElevatedButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HalamanVisit())),
          child: Image.asset('assets/icons/IconVisit.png'),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(16),
            primary: ActivityPageColor.blendingCircleBorder,
          ),
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
        leading: ElevatedButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HalamanPaket())),
          child: Image.asset('assets/icons/IconPaket.png'),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(16),
            primary: ActivityPageColor.blendingCircleBorder,
          ),
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
        leading: ElevatedButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HalamanKonsultasi())),
          child: Image.asset('assets/icons/IconKonsultasi.png'),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(16),
            primary: ActivityPageColor.blendingCircleBorder,
          ),
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
        leading: ElevatedButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HalamanLifestyle())),
          child: Image.asset('assets/icons/IconLifestyle.png'),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(16),
            primary: ActivityPageColor.blendingCircleBorder,
          ),
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
        leading: ElevatedButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HalamanRiwayat())),
          child: Image.asset('assets/icons/IconRiwayat.png'),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(16),
            primary: ActivityPageColor.blendingCircleBorder,
          ),
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
