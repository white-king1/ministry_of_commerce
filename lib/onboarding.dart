// ignore_for_file: prefer_const_constructors, deprecated_member_use, library_private_types_in_public_api, sized_box_for_whitespace, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:ministry_of_commerce/widget/big_text.dart';
import 'package:ministry_of_commerce/widget/colors.dart';
import 'package:ministry_of_commerce/widget/small_text.dart';

import 'auth/login.dart';
import 'auth/signup.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Center(child: Image(image: AssetImage('assets/rvsgc.png'))),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: SmallText(
                  text: 'Kindly Login or SignUp to get Access.',
                  color: AppColors.greyColor,
                  size: 17,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 20),
              child: SizedBox(
                width: 450,
                height: 50,
                // ignore: sort_child_properties_last
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        //please change Dashboard to Register
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  // ignore: sort_child_properties_last
                  child: BigText(
                    text: "Login",
                    fontWeight: FontWeight.bold,
                    size: 14,
                    color: Colors.white,
                  ),

                  style: ElevatedButton.styleFrom(
                    primary:
                        AppColors.blueColor, //change background color of button
                    // onPrimary: Colors.yellow, //change text color of button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 20),
              child: SizedBox(
                width: 450,
                height: 50,
                // ignore: sort_child_properties_last
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        //please change Dashboard to Register
                        builder: (context) => Signup(),
                      ),
                    );
                  },
                  // ignore: sort_child_properties_last
                  child: BigText(
                    text: "Sign Up",
                    fontWeight: FontWeight.bold,
                    size: 14,
                    color: Colors.blue,
                  ),

                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, //change background color of button
                    // onPrimary: Colors.yellow, //change text color of button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: AppColors.greyColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
