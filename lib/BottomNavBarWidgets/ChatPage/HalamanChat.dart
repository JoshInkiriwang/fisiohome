import 'package:FisioHome/BottomNavBarWidgets/ChatPage/models/chatUserModel.dart';
import 'package:FisioHome/BottomNavBarWidgets/ChatPage/widgets/conversationList.dart';
import 'package:flutter/material.dart';

class HalamanChat extends StatefulWidget {
  @override
  _HalamanChatState createState() => _HalamanChatState();
}

class _HalamanChatState extends State<HalamanChat> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Sukarman EasyMan", messageText: "Ada yang bisa saya bantu ?", imageURL: "https://imedica.brainstormforce.com/wp-content/uploads/2015/02/doc1.jpg", time: "13.30"),
    ChatUsers(name: "Jane MoonShine", messageText: "Hi ! How are you", imageURL: "http://wwsthemes.com/themes/medwise/v1.3/images/doctor-single.jpg", time: "Yesterday"),
  ];

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
                  'Pesan Masuk', style: TextStyle(
                    color: Color.fromRGBO(15, 15, 15, 100),
                  ),
                ),
                  centerTitle: true,
              ),
              body: TabBarView(
                children: [
                  // Chat Bagian Konsultasi
                  ListView.builder(
                    itemCount: chatUsers.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 16),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return ConversationList(
                        name: chatUsers[index].name,
                        messageText: chatUsers[index].messageText,
                        imageUrl: chatUsers[index].imageURL,
                        time: chatUsers[index].time,
                        isMessageRead: (index == 0 || index == 3)?true:false,
                      );
                    },
                  ),

                  // Bagian Notifikasi
                    Text('Ini halaman Notifikasi'),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
