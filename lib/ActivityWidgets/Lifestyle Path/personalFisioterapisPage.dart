import 'package:flutter/material.dart';

class PersonalFisioterapisPage extends StatefulWidget {
  const PersonalFisioterapisPage({Key? key}) : super(key: key);

  @override
  _PersonalFisioterapisPageState createState() =>
      _PersonalFisioterapisPageState();
}

class _PersonalFisioterapisPageState extends State<PersonalFisioterapisPage> {
  final GlobalKey<FormState> _personalFisioFormKey = GlobalKey<FormState>();

  TextEditingController _namaPasien = TextEditingController();
  TextEditingController _usiaPasien = TextEditingController();
  TextEditingController _jenisKelamin = TextEditingController();
  TextEditingController _jenisOlahraga = TextEditingController();

  @override
  void initState() {
    _namaPasien.text = '';
    _usiaPasien.text = '';
    _jenisKelamin.text = '';
    _jenisOlahraga.text = '';

    super.initState();
  }

  void dispose() {
    _namaPasien.dispose();
    _usiaPasien.dispose();
    _jenisKelamin.dispose();
    _jenisOlahraga.dispose();

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
        title: Text('Personal Fisioterapi'),
        backgroundColor: Color.fromRGBO(95, 37, 224, 100),
      ),
      body: Form(
        key: _personalFisioFormKey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
          child: Column(
            children: <Widget>[
              //Nama Pasien
              TextFormField(
                keyboardType: TextInputType.name,
                controller: _namaPasien,
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
                keyboardType: TextInputType.number,
                controller: _usiaPasien,
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
                controller: _jenisKelamin,
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

              //Jenis Olahraga
              TextFormField(
                controller: _jenisOlahraga,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(217, 223, 229, 100),
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: 'Masukan Jenis Olahraga',
                  labelText: 'Jenis Olahraga',
                ),
              ),

              SizedBox(height: 35.0),

              //Tombol "Lanjutkan Pemesanan"
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lanjutkan Pemesanan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(95, 37, 224, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(328.0, 58.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
