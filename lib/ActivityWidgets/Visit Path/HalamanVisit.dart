import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HalamanVisit extends StatefulWidget {
  const HalamanVisit({Key? key}) : super(key: key);

  @override
  _HalamanVisitState createState() => _HalamanVisitState();
}

class _HalamanVisitState extends State<HalamanVisit> {
  final GlobalKey<FormState> _visitformKey = GlobalKey<FormState>();

  TextEditingController _tanggalTerapi = TextEditingController();
  TextEditingController _keluhanSejak = TextEditingController();

  @override
  void initState() {
    _tanggalTerapi.text = '';
    _keluhanSejak.text = '';
    super.initState();
  }

  void dispose() {
    _tanggalTerapi.dispose();
    _keluhanSejak.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Image.asset('assets/icons/logoFisiohome2.png'),
        ),
        title: Text('Visit Sekarang'),
        backgroundColor: Color.fromRGBO(95, 37, 224, 100),
      ),

      body: Form(
        key: _visitformKey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
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

                  SizedBox(height: 15.0),

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

                  SizedBox(height: 15.0),

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

                  SizedBox(height: 15.0),

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

                  SizedBox(height: 15.0),

                  //Keluhan Sejak
                  TextFormField(
                    controller: _keluhanSejak,
                    readOnly: true,
                    decoration: new InputDecoration(
                      suffixIcon: Image.asset('assets/icons/IconCalendar.png'),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(217, 223, 229, 100),
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'dd/mm/yyyy',
                      labelText: 'Keluhan Sejak',
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2100),
                        cancelText: 'Cancel',
                      );

                      if (pickedDate != null) {
                        setState(() {
                          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                          _keluhanSejak.text = formattedDate;
                        });
                      }
                    },
                  ),

                  SizedBox(height: 15.0),

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

                  SizedBox(height: 15.0),

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

                  SizedBox(height: 15.0),

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

                  SizedBox(height: 15.0),

                  //Pilih Tanggal Terapi
                  TextFormField(
                    controller: _tanggalTerapi,
                    readOnly: true,
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
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100),
                        cancelText: 'Cancel',
                      );

                      if (pickedDate != null) {
                        setState(() {
                          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                          _tanggalTerapi.text = formattedDate;
                        });
                      }
                    },
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
