import 'package:flutter/material.dart';
import 'package:tiktok_clone/pages/friends.dart';
import 'package:tiktok_clone/pages/home.dart';
import 'package:tiktok_clone/pages/inbox.dart';
import 'package:tiktok_clone/pages/plus.dart';
import 'package:tiktok_clone/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //static const List<Widget> _pages = [];
  int _selectedIndex = 0;
  void _navigationbottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    userhomepage(),
    userfriendspage(),
    userpluspage(),
    userinboxpage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationbottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person_3), label: 'friends'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'indox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}
