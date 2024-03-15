import 'package:bai1_2/features/home/HomeScreen.dart';
import 'package:bai1_2/features/user/screen/user_profile.dart';
import 'package:bai1_2/news/screen/NewsScreen.dart';
import 'package:flutter/material.dart';

class Moblie_layout extends StatefulWidget {
  const Moblie_layout({super.key});

  @override
  _Moblie_layoutState createState() => _Moblie_layoutState();
}

class _Moblie_layoutState extends State<Moblie_layout> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: OnPageChange,
        children: List.generate(3, (index) => index == 0 ? HomeScreen() : index == 1 ? NewScreen() : screen_user_profile()

        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        onTap: OnPageChange,
      ),
    );
  }

  void OnPageChange(int page){
    setState(() {
      _currentPage = page;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
