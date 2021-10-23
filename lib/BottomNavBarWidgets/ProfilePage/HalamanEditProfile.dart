
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(95, 37, 224, 100),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(
                            'https://www.rd.com/wp-content/uploads/2017/09/'
                                '01-shutterstock_476340928-Irina-Bg.jpg?'
                                'resize=1024,683'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
