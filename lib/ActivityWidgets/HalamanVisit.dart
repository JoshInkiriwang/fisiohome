import 'package:flutter/material.dart';

class HalamanVisit extends StatefulWidget {
  const HalamanVisit({Key? key}) : super(key: key);

  @override
  _HalamanVisitState createState() => _HalamanVisitState();
}

class _HalamanVisitState extends State<HalamanVisit> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 30.0,right: 0.0),
              child: Image.asset('assets/icons/LogoVisitSekarang.png'),
            ),
            title: new Text('Visit Sekarang'),
            backgroundColor: Color.fromRGBO(95, 37, 224, 100),
          ),

          body: Form(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Masukan Nama Lengkap Pasien',
                          labelText: 'Nama Pasien',
                          icon: Icon(Icons.people)),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Masukan Usia Pasien',
                          labelText: 'Usia Pasien',
                          icon: Icon(Icons.people)),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Masukan Jenis Kelamin Pasien',
                          labelText: 'Jenis Kelamin',
                          icon: Icon(Icons.people)),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Masukan Keluhan Pasien',
                          labelText: 'Keluhan Utama',
                          icon: Icon(Icons.people)),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Masukan tanggal awal sakit',
                          labelText: 'Keluhan Sejak',
                          icon: Icon(Icons.people)),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Masukan Jenis Kelamin Pasien',
                          labelText: 'Diagnosa Dokter (Jika Ada)',
                          icon: Icon(Icons.people)),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Kondisi Pasien Sekarang',
                          labelText: 'Kondisi Pasien Sekarang',
                          icon: Icon(Icons.people)),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Permintaan Khusus',
                          labelText: 'Permintaan Khusus',
                          icon: Icon(Icons.people)),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'Dropdown',
                          labelText: 'Pilih Tanggal Terapi',
                          icon: Icon(Icons.people)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child : Text('Lanjutkan Pemesanan'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}
