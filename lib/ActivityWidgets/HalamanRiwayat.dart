import 'package:flutter/material.dart';
import 'package:FisioHome/ColorPalette.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Riwayat',
    home: new HalamanRiwayat(),
    theme: ThemeData(fontFamily: 'Raleway'),
  ));
}

class HalamanRiwayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text('Riwayat'),
          backgroundColor: Color.fromRGBO(95, 37, 224, 100),
        ),
        body: DefaultTabController(
            length: 4,
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: ColorPalette.unselectedlabel,
              labelColor: ColorPalette.selectedlabel,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), // Creates border
                  color: ColorPalette.indicator),
              tabs: [
                Tab(text: 'Visit Langsung'),
                Tab(text: 'Paket'),
                Tab(text: 'Konsultasi'),
                Tab(text: 'Lifestyle'),
              ],
            )));
  }
}
