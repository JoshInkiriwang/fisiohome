import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16, bottom: 10, left: 10),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () { 
                    Navigator.pop(context);
                  }, 
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color.fromRGBO(95, 37, 224, 100),
                    size: 32.0,
                  ),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://imedica.brainstormforce.com/wp-content/uploads/2015/02/doc1.jpg"),
                  maxRadius: 25,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Sukarman EasyMan",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                      SizedBox(height: 6,),
                      Text("Dokter Umum",style: TextStyle(color: Color.fromRGBO(150, 150, 150, 100), fontSize: 12),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
