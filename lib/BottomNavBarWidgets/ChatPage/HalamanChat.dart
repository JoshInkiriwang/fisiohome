import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Profile',
    home: new HalamanChat(),
  ));
}

class HalamanChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
          home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color.fromRGBO(255, 255, 255, 100),
                bottom: const TabBar(
                  unselectedLabelColor: Color.fromRGBO(15, 15, 15, 100),
                  labelColor: Color.fromRGBO(95, 37, 224, 100),
                  tabs: [
                    Tab(text: 'Konsultasi'),
                    Tab(text: 'Notifikasi'),
                  ],
                ),
                title: Text(
                  'Pesan Masuk',
                  style: TextStyle(
                    color: Color.fromRGBO(15, 15, 15, 100),
                  ),
                ),
                centerTitle: true,
              ),
              body: const TabBarView(
                children: [
                  Text('Ini halaman Konsultasi'),
                  Text('Ini halaman Notifikasi'),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
