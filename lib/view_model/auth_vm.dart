// ignore_for_file: avoid_single_cascade_in_expression_statements, avoid_print, prefer_const_constructors, unnecessary_import, use_build_context_synchronously, unused_local_variable, unrelated_type_equality_checks, unused_import, dead_code

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ministry_of_commerce/home.dart';
import 'package:ministry_of_commerce/services/server.dart';

import '../dashboard.dart';
import '../models/login_response.dart';
import '../services/local_storage_service.dart';
import '../widget/getit.dart';

class AuthVm extends ChangeNotifier {
  final email = TextEditingController();
  final password = TextEditingController();
  Server server = Server();

  bool loading = false;

  Future<void> login(BuildContext context) async {
    email.text = 'bleveragei';
    password.text = 'UZGAiqPqWQHQ';

    print('loading');
    loading = true;
    notifyListeners();

    final response = await server.authData(
        {'username': email.text, 'password': password.text}, "/auth/login");

    final Map<String, dynamic> parsed = json.decode(response.body);
    final result = LoginResponse.fromJson(parsed);
    print(parsed);
    if (result.token != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Home())));
    }else{
      Flushbar(
        title: "Oops",
        message: "Incorrect credentials",
        duration: Duration(seconds: 3),
      )..show(context);
    }
    loading = false;
    notifyListeners();
  }
}

