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
    return Scaffold(

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
          padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //Nama Pasien
                  TextFormField(
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Masukan Nama Lengkap Pasien',
                      labelText: 'Nama Pasien',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  //Usia Pasien
                  TextFormField(
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Masukan Usia Pasien',
                      labelText: 'Usia Pasien',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  //Jenis Kelamin
                  TextFormField(
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Masukan Jenis Kelamin',
                      labelText: 'Jenis Kelamin',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  //Keluhan Utama
                  TextFormField(
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Masukan Keluhan Pasien',
                      labelText: 'Keluhan Utama',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  //Keluhan Sejak
                  TextFormField(
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'dd/mm/yyyy',
                      labelText: 'Keluhan Sejak',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  //Diagnosa Dokter (Jika Ada)
                  TextFormField(
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Jika ada',
                      labelText: 'Diagnosa Dokter',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  //Kondisi Pasien Sekarang
                  TextFormField(
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100)
                        ),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      hintText: 'Tirah Baring / Normal / Hanya Bisa Duduk',
                      labelText: 'Nama Pasien',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  //Permintaan Khusus
                  TextFormField(
                    decoration: new InputDecoration(
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 45.0,
                        color: Color.fromRGBO(68, 105, 132, 100),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100)
                        ),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      hintText: 'Drop Down Bar',
                      labelText: 'Permintaan Khusus',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  //Pilih Tanggal Terapi
                  TextFormField(
                    decoration: new InputDecoration(
                      suffixIcon: Image.asset('assets/icons/IconCalendar.png'),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(217, 223, 229, 100),
                        ),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      hintText: 'Date Pop Up',
                      labelText: 'Pilih Tanggal Terapi',
                    ),
                  ),
                  SizedBox(height: 15.0),
                  //Tombol "Lanjutkan Pemesanan"
                  TextButton(
                    onPressed: () {},
                    child : Text('Lanjutkan Pemesanan'),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
