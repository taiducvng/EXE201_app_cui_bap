import 'package:flutter/material.dart';
import 'package:metravel_demo1/VIews/home_screen.dart';
import 'package:metravel_demo1/constants/app_constants.dart';

import '../VIews/Account_screen.dart';
import '../VIews/book_screen.dart';
import '../VIews/result_screen_demo.dart';
import '../VIews/trip_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BookScreen(),
    TripScreen(),
    AccountScreen(),
    ResultScreen(),
    TripScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(kDarkGrey.value),
        unselectedItemColor: const Color(0xFF526480),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
          BottomNavigationBarItem(icon: Icon(Icons.train), label: "Trips"),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts), label: "Account"),
        ],
      ),
    );
  }
}
