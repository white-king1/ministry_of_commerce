// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ministry_of_commerce/notifications.dart';
import 'package:ministry_of_commerce/profile.dart';
import 'package:ministry_of_commerce/settings.dart';
import 'package:ministry_of_commerce/widget/colors.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List pages = [
    Home(),
    Notifications(),
    Profile(),
    Settings(),
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
      backgroundColor: Colors.black,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        selectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.blueColor,
        unselectedItemColor: AppColors.blueColor.withOpacity(0.5),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Notifications', icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.notification_add)),
          BottomNavigationBarItem(
              label: 'Settings', icon: Icon(Icons.account_box)),
        ],
      ),
    );
  }
}