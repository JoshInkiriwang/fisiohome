import 'package:flutter/material.dart';
import 'BottomNavBarWidgets/HomePage/HalamanHome.dart';
import 'BottomNavBarWidgets/ActivityPage/HalamanActivity.dart';
import 'BottomNavBarWidgets/ArticlePage/HalamanArticle.dart';
import 'BottomNavBarWidgets/ChatPage/HalamanChat.dart';
import 'BottomNavBarWidgets/ProfilePage/HalamanProfile.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Fisiohome',
    home: new BottomNav(),
  ));
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    HalamanHome(),
    HalamanActivity(),
    HalamanArticle(),
    HalamanChat(),
    HalamanProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            // icon: Icon(Icons.home_outlined),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Activity',
            activeIcon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'Article',
            activeIcon: Icon(Icons.school),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Chat',
            activeIcon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
            activeIcon: Icon(Icons.person),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromRGBO(95, 37, 224, 100),
        unselectedItemColor: Color.fromRGBO(182, 182, 202, 100),
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
