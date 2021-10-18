import 'package:readmore/readmore.dart';

import 'ActivityPageTextStyle.dart';
import 'package:FisioHome/ColorPalette.dart';
import 'package:flutter/material.dart';
import '../../ActivityWidgets/Visit Path/HalamanVisit.dart';
import '../../ActivityWidgets/HalamanPaket.dart';
import '../../ActivityWidgets/HalamanKonsultasi.dart';
import '../../ActivityWidgets/Lifestyle Path/HalamanLifestyle.dart';
import '../../ActivityWidgets/HalamanRiwayat.dart';
import 'ActivityPageColor.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanActivity(),
  ));
}

class HalamanActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
                'Aktivitas Saya',
                style: ActivityPageTextStyle.AppBar_Aktivitas
            ),
          ),

          backgroundColor: ColorPalette.appBarColor,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
          children: <Widget>[
            CardVisit(),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: CardPaket(),
            ),
            CardKonsultasi(),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: CardLifestyle(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: CardRiwayat(),
            ),
          ],
        ),
      ),
    );
  }
}

//Cards
class CardVisit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
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
          Icons.arrow_forward_ios_rounded,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        subtitle: ReadMoreText(
            'Pelayanan Fisioterapis yang akan sesegera mungkin datang ke rumah. '
            'Setelah memesan, Fisioterapis terdekat akan segera datang ke rumah Kamu.',
            trimLines: 3,
            colorClickableText: Colors.deepOrangeAccent,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show More',
            trimExpandedText: 'Show Less',
            style: ActivityPageTextStyle.subtitlecard,
        ),
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
      elevation: 4.0,
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
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        subtitle: ReadMoreText(
          'Untuk penanganan jangka panjang, Client bisa memilih layanan Visit '
          'Paket, atur jadwal dan waktu kunjungan Fisioterapis sesuai keinginan.',
          trimLines: 3,
          colorClickableText: Colors.deepOrangeAccent,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show More',
          trimExpandedText: 'Show Less',
          style: ActivityPageTextStyle.subtitlecard,
        ),
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
      elevation: 4.0,
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
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        subtitle: ReadMoreText(
          'Untuk client yang ingin mendapatkan saran penanganan dan edukasi '
          'latihan-latihan terkait keluhan gerak atau mau meningkatkan performa, '
          'bisa menggunakan layanan Konsultasi, cliet kan terhubung dengan Fisioterapis secara langsung.',
        trimLines: 3,
        colorClickableText: Colors.deepOrangeAccent,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show More',
        trimExpandedText: 'Show Less',
        style: ActivityPageTextStyle.subtitlecard,
      ),
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
      elevation: 4.0,
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
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        subtitle: ReadMoreText(
            'Untuk client yang ingin mendapatkan pelayanan personal Fisioterapis'
            ' atlet atau pada event Anda, dapat memilih layanan Kita yang satu ini. '
            'Dapatkan harga spesial dengan menghubungi admin Kami.',
          trimLines: 3,
          colorClickableText: Colors.deepOrangeAccent,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show More',
          trimExpandedText: 'Show Less',
          style: ActivityPageTextStyle.subtitlecard,
        ),
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
      elevation: 4.0,
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
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: ActivityPageColor.ArrowForwardColor,
        ),
        subtitle: Text('xxxxxx', style: ActivityPageTextStyle.subtitlecard),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HalamanRiwayat())),
      ),
    );
  }
}
