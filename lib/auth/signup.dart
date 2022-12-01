// ignore_for_file: prefer_const_constructors, deprecated_member_use, library_private_types_in_public_api, must_call_super

import 'package:flutter/material.dart';

import '../widget/big_text.dart';
import '../widget/colors.dart';
import '../widget/small_text.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Drop Down Meu
  final items = ["MALE", "FEMALE"];
  String? value;

  // for password visibility & invisibility
  bool _passwordVisible = true;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.grey,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'SIGNUP',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(child: Image(image: AssetImage('assets/rvsgc.png'))),
                SizedBox(
                  height: 50,
                ),
                BigText(
                  text: 'Create An Acoount',
                    color: AppColors.greyColor,
                    size: 14,
                    fontWeight: FontWeight.normal),
                SizedBox(
                  height: 30,
                ),
                Form(
                    child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "First Name",
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.blueColor),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: 'First name',
                            suffixIcon: Icon(
                              Icons.edit,
                              color: AppColors.blueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Last Name",
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.blueColor),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: 'Last name',
                            suffixIcon: Icon(
                              Icons.edit,
                              color: AppColors.blueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Gender",
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 450,
                          height: 50,
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.only(
                              bottom: 10, top: 10, left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                            hint: Text('Gender'),
                            value: value,
                            iconSize: 16,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                              color: Colors.grey,
                            ),
                            isExpanded: true,
                            items: items.map(buildMenuItem).toList(),
                            onChanged: (value) =>
                                setState(() => this.value = value),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Email",
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.blueColor),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: 'Your email',
                            suffixIcon: Icon(
                              Icons.email,
                              color: AppColors.blueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Phone",
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.blueColor),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: 'Phone number',
                            suffixIcon: Icon(
                              Icons.phone_enabled,
                              color: AppColors.blueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Password",
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.blueColor),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.blueColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Confirm Password",
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.blueColor),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: 'Confirm password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.blueColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
                SizedBox(
                  height: 30,
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
                        color: Colors.white,
                      ),

                      style: ElevatedButton.styleFrom(
                        primary: AppColors
                            .blueColor, //change background color of button
                        // onPrimary: Colors.yellow, //change text color of button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: AppColors.greyColor),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 10,
                      width: 100,
                    ),
                    Center(
                      child: SizedBox(
                        child: SmallText(
                            text: 'Already have an account?',
                            size: 16,
                            color: AppColors.blueColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: SmallText(
                            color: AppColors.blueColor,
                            text: 'Login',
                            size: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontSize: 16),
      ));
}
