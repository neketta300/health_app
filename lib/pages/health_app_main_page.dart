import 'package:flutter/material.dart';
import 'package:health_app/utils/colors';
import 'package:iconsax/iconsax.dart';

class HealthAppMainPage extends StatefulWidget {
  const HealthAppMainPage({super.key});

  @override
  State<HealthAppMainPage> createState() => _HealthAppMainPageState();
}

class _HealthAppMainPageState extends State<HealthAppMainPage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List pages = [
      Scaffold(),
      Scaffold(),
      Scaffold(),
      Scaffold(),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black26,
        selectedItemColor: kPrimaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home5),
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.calendar_1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
