import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/booking_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    BookingListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
          currentIndex: _selectedIndex,
          onTap: navigateBottomBar,
          backgroundColor: const Color.fromARGB(255, 128, 98, 248),
          dotIndicatorColor: Colors.white,
          items: [
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.white,
            ),
            DotNavigationBarItem(
                icon: const Icon(Icons.list),
                selectedColor: Colors.white,
                unselectedColor: const Color.fromARGB(255, 0, 0, 0))
          ]),
    );
  }
}
