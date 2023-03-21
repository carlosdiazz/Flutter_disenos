import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        //showSelectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Primer'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: 'Segundo'),
          BottomNavigationBarItem(
              icon: Icon(Icons.usb_rounded), label: 'Tercero')
        ]);
  }
}
