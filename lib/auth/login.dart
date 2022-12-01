// ignore_for_file: unused_field, non_constant_identifier_names, must_call_super, prefer_const_constructors, deprecated_member_use, unnecessary_new, avoid_unnecessary_containers, avoid_single_cascade_in_expression_statements, library_private_types_in_public_api, unused_import

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:ministry_of_commerce/auth/signup.dart';
import 'package:provider/provider.dart';

import '../dashboard.dart';
import '../forgot_password.dart';
import '../view_model/auth_vm.dart';
import '../widget/big_text.dart';
import '../widget/colors.dart';
import '../widget/small_text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // for password visibility & invisibility
  bool _passwordVisible = true;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _passwordVisible = false;
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthVm>(builder: (context, auth, child) {
      return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.grey,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Center(child: Image(image: AssetImage('assets/rvsgc.png'))),
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Email or Username",
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: auth.email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.greyColor),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: 'Enter your email',
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.email,
                                color: AppColors.blueColor,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
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
                          height: 10,
                        ),
                        TextFormField(
                          controller: auth.password,
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
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ));
                      },
                      child: SmallText(
                        color: AppColors.blueColor,
                        text: 'Forgot Password?',
                        fontWeight: FontWeight.normal,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: SizedBox(
                        width: 450,
                        height: 50,
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: ElevatedButton(
                            onPressed: () =>{
                              // auth.login(context)
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=> Dashboard(),)
                                )
                            },
                            // ignore: sort_child_properties_last
                            child:
                            auth.loading == true?
                            Text('Loading. .......')
                             :BigText(
                              text: "Login",
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.blueColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(
                          text: "Don't have an account?",
                          size: 16,
                          color: AppColors.blueColor,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Signup(),
                            ));
                          },
                          child: BigText(
                            color: AppColors.blueColor,
                            text: "Signup",
                            size: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ),
        ),
      );
    });
  }
}
