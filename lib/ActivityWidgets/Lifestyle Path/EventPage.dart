import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final GlobalKey<FormState> _eventPageFormKey = GlobalKey<FormState>();

  TextEditingController _namaPemesan = TextEditingController();
  TextEditingController _namaAcara = TextEditingController();
  TextEditingController _namaEvent = TextEditingController();
  TextEditingController _event = TextEditingController();
  TextEditingController _kebutuhanFisioterapis = TextEditingController();
  TextEditingController _tanggalPelaksanaan = TextEditingController();
  TextEditingController _waktuPelaksanaan = TextEditingController();
  TextEditingController _jamKumpulFisioterapis = TextEditingController();
  TextEditingController _noLOEvent = TextEditingController();

  @override
  void initState() {
    _namaPemesan.text = '';
    _namaAcara.text = '';
    _namaEvent.text = '';
    _event.text = '';
    _kebutuhanFisioterapis.text = '';
    _tanggalPelaksanaan.text = '';
    _waktuPelaksanaan.text = '';
    _jamKumpulFisioterapis.text = '';
    _noLOEvent.text = '';

    super.initState();
  }

  void dispose() {
    _namaPemesan.dispose();
    _namaAcara.dispose();
    _namaEvent.dispose();
    _event.dispose();
    _kebutuhanFisioterapis.dispose();
    _tanggalPelaksanaan.dispose();
    _waktuPelaksanaan.dispose();
    _jamKumpulFisioterapis.dispose();
    _noLOEvent.dispose();

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
        title: Text('Event'),
        backgroundColor: Color.fromRGBO(95, 37, 224, 100),
      ),

      body: Form(
        key: _eventPageFormKey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //Nama Pemesan
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: _namaPemesan,
                  decoration: new InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(217, 223, 229, 100),
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                    hintText: 'Masukan Nama Pemesan',
                    labelText: 'Nama Pemesan',
                  ),
                ),

                SizedBox(height: 15.0),

                //Nama Acara
                TextFormField(
                  controller: _namaAcara,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 223, 229, 100),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Masukan Nama Acara',
                    labelText: 'Nama Acara',
                  ),
                ),

                SizedBox(height: 15.0),

                //Event/Acara
                TextFormField(
                  controller: _event,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 223, 229, 100),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Masukan Event/Acara',
                    labelText: 'Event/Acara',
                  ),
                ),

                SizedBox(height: 15.0),

                //Kebutuhan Fisioterapis
                TextFormField(
                  controller: _kebutuhanFisioterapis,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 223, 229, 100),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Masukan Kebutuhan Fisioterapis',
                    labelText: 'Kebutuhan Fisioterapis',
                  ),
                ),

                SizedBox(height: 15.0),

                //Tanggal Pelaksanaan
                TextFormField(
                  controller: _tanggalPelaksanaan,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 223, 229, 100),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'dd-mm-yyyy',
                    labelText: 'Tanggal Pelaksanaan',
                  ),
                ),

                SizedBox(height: 15.0),

                //Waktu Pelaksanaan
                TextFormField(
                  controller: _waktuPelaksanaan,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 223, 229, 100),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'hh-mm',
                    labelText: 'Waktu Pelaksanaan',
                  ),
                ),

                SizedBox(height: 15.0),

                //Jam Kumpul Fisioterapis
                TextFormField(
                  controller: _jamKumpulFisioterapis,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 223, 229, 100),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Masukan Jam Kumpul Fisioterapis',
                    labelText: 'Jam Kumpul Fisioterapis',
                  ),
                ),

                SizedBox(height: 15.0),

                //No. LO Event
                TextFormField(
                  controller: _noLOEvent,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(217, 223, 229, 100),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Masukan nomor LO Event',
                    labelText: 'No. LO Event',
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
