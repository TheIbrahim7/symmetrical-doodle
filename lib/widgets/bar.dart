import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int activeIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) {
          setState(() {
            activeIndex = value;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        elevation: 20,
        currentIndex: activeIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: "You"),
        ]);
  }
}
