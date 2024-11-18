// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F1),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            color: Colors.white,
            activeColor: Colors.white,
            gap: 8,

/*             onTabChange: (index) {
              if (index == 0) {

              } else if (condition2) {
                // statement 2
              } else if (condition3) {
                // statement 3
              } else {
                // else statment
              }
            }, */
            padding: EdgeInsets.all(18),
            tabs: const [
              GButton(
                icon: IconlyLight.home,
                text: 'หน้าแรก',
              ),
              GButton(
                icon: IconlyLight.calendar,
                text: 'คำนวน',
              ),
              GButton(
                icon: IconlyLight.search,
                text: 'ค้นหา',
              ),
              GButton(
                icon: IconlyLight.setting,
                text: 'ตั้งค่า',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
