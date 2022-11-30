// ignore_for_file: avoid_single_cascade_in_expression_statements, avoid_print, prefer_const_constructors, unnecessary_import, use_build_context_synchronously, unused_local_variable

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ministry_of_commerce/home.dart';
import 'package:ministry_of_commerce/services/server.dart';

import '../models/login_response.dart';
import '../services/local_storage_service.dart';
import '../widget/getit.dart';

class AuthVm extends ChangeNotifier{
  final email = TextEditingController();
  final password= TextEditingController();
  Server server = Server();

  Future<void> login(BuildContext context) async {
    email.text = 'kminchelle';
    password.text = '0lelplR';

    print('loading');
    final response = await server
        .authData({'email': email.text, 'password': password.text}, '/login');

final Map<String, dynamic> parsed = json.decode(response.body);
    final result = LoginResponse.fromJson(parsed);
    print(result.success);
if (result.success == true) {
      await getIt.get<LocalStorageService>().setName(result.user?.username);
      await getIt.get<LocalStorageService>().setToken(result.token ?? '');
      await getIt.get<LocalStorageService>().setEmail(result.user?.email);

      // Navigator.push(context, MaterialPageRoute(builder: ((context) => Dashboard())));
      // if (result.user?.emailVerifiedAt == "") {
      //   Get.offAll(VerifyEmail());
      // } else if (result.user?.status == "pending") {
      //   Get.offAll(ConfirmSub());
      //   return;
      // }
      Get.offAll(Home());
      // Get.to(Dashboard());
    } else {
      Flushbar(
        title: "Oops",
        message: "Incorrect credentials",
        duration: Duration(seconds: 3),
      )..show(context);
    }
  }
}

// class AuthVm extends ChangeNotifier {
//   // login controllers
//   final email = TextEditingController();
//   final password = TextEditingController();
//   final name = TextEditingController();

//   Server server = Server();

//   bool loading = false;

//   Future<void> login(BuildContext context) async {
//     print('loading');
//     loading = true;
//     notifyListeners();

//     final response = await server
//         .authData({'email': email.text, 'password': password.text}, '/login');

//     final Map<String, dynamic> parsed = json.decode(response.body);
//     final result = LoginResponse.fromJson(parsed);
//     print(result.success);
//     if (result.success == true) {
//       await getIt.get<LocalStorageService>().setName(result.user?.username);
//       await getIt.get<LocalStorageService>().setToken(result.token ?? '');
//       await getIt.get<LocalStorageService>().setEmail(result.user?.email);

//       // Navigator.push(context, MaterialPageRoute(builder: ((context) => Dashboard())));
//       // if (result.user?.emailVerifiedAt == "") {
//       //   Get.offAll(VerifyEmail());
//       // } else if (result.user?.status == "pending") {
//       //   Get.offAll(ConfirmSub());
//       //   return;
//       // }
//       Get.offAll(Home());
//       // Get.to(Dashboard());
//     } else {
//       Flushbar(
//         title: "Oops",
//         message: "Incorrect credentials",
//         duration: Duration(seconds: 3),
//       )..show(context);
//     }

//     loading = false;
//     notifyListeners();
//   }
// }