import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/features/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  State<HomeBottomNavigationBar> createState() => _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {

  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const Center(child: Text('Search Screen', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Settings Screen', style: TextStyle(fontSize: 24))),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: AppColors.grad2,
        animationDuration: const Duration(milliseconds: 300),
        height: 60,
        index: currentIndex,
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );;
  }
}
