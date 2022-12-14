// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, unused_import

import 'package:flutter/material.dart';
import 'package:ministry_of_commerce/auth/login.dart';
import 'package:ministry_of_commerce/widget/colors.dart';

import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  Future<void> nextPage() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 300,
            ),
            Center(child: Image(image: AssetImage('assets/rvsgc.png')))
          ],
        ),
      ),
    );
  }
}