// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, unnecessary_new

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:ministry_of_commerce/widget/big_text.dart';
import 'package:ministry_of_commerce/widget/colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Forgot Password',
        style: TextStyle(color: Colors.grey,
        ),
        ),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(children: [
              SizedBox(
                height: 80,
              ),
              Image(image: AssetImage('assets/rvsgc.png')),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          color: AppColors.blueColor,
                          text: 'Forgot Password',
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        Text(
                          'Enter The Email You Registered With',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.blueColor),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelText: 'Email',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.email,
                      color: AppColors.blueColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              
              SizedBox(
                width: 350,
                height: 50,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: ElevatedButton(
                    onPressed: () {
                      // ignore: avoid_single_cascade_in_expression_statements
                      Flushbar(
                              title: "Please,",
                              message: "Kindly Check Your Email To Reset Your Password!",
                              duration: Duration(seconds: 3),
                            )..show(context);
                    },
                    // ignore: sort_child_properties_last
                    child: BigText(
                      text: "Submit",
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.blueColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ]),
          ),
        ),
      ),
    );
  }
}