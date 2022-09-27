import 'package:flutter/material.dart';
import 'package:shop/consts/global_colors.dart';
import 'package:shop/screens/cart_screen.dart';
import 'package:shop/screens/home_screen.dart';
import 'package:shop/screens/profile_screen.dart';
import 'package:shop/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = const [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: lightIconsColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          iconSize: 26,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ]),
      body: pages[currentIndex],
    );
  }
}
