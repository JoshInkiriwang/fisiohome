import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(95, 37, 224, 100),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text('SAVE', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
             Container(
                height: 230.0,
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(95, 37, 224, 100),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: AlignmentDirectional.topCenter,
                      child:
                        Padding(
                          padding: EdgeInsets.only(top: 35.0),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                              'https://www.rd.com/wp-content/uploads/2017/09/'
                                  '01-shutterstock_476340928-Irina-Bg.jpg?'
                                  'resize=1024,683'
                            ),
                          ),
                        ),
                    ),
                    Positioned(
                      top: 135,
                      left: 220,

                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                          primary: Color.fromRGBO(255, 94, 0, 100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nama',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(180, 180, 180, 100),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text('Ananda Setya Kinanthi',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(46, 46, 46, 100),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(214, 214, 214, 100),
                ),
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Tanggal Lahir',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(180, 180, 180, 100),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text('18/09/1994',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(46, 46, 46, 100),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
