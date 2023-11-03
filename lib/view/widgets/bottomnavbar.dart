import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contollers/page_provider.dart';
import 'package:flutter_application_1/view/booking_list_screen.dart';
import 'package:flutter_application_1/view/home_screen.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    Provider.of<Pageprovider>(context, listen: false).navigateBottomBar(index);
  }

  final List<Widget> _pages = [
    HomeScreen(),
    const BookingListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: Provider.of<Pageprovider>(context, listen: true).selectedIndex,
        children: _pages,
      ),
      extendBody: true,
      bottomNavigationBar: Consumer(
        builder: (context, value, child) {
          return DotNavigationBar(
              currentIndex: Provider.of<Pageprovider>(context, listen: false)
                  .selectedIndex,
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
                    unselectedColor: const Color.fromARGB(255, 0, 0, 0)),
              ]);
        },
      ),
    );
  }
}
