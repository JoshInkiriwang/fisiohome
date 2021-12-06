import 'package:flutter/material.dart';

class NotifikasiList extends StatefulWidget {
  String jenisNotifikasi = '';
  String nameNotifikasi = '';
  String notifikasiDetail = '';
  String timeNotifikasi = '';
  NotifikasiList ({
    required this.jenisNotifikasi,
    required this.nameNotifikasi,
    required this.notifikasiDetail,
    required this.timeNotifikasi,
  });

  @override
  _NotifikasiListState createState() => _NotifikasiListState();
}

class _NotifikasiListState extends State<NotifikasiList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Notification Clicked');
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      ),
    );
  }

}