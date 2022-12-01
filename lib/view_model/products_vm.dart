// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/products_response.dart';
import '../services/server.dart';

class ProductsVm extends ChangeNotifier {
  final server = Server();

  Future getProducts(BuildContext context) async {
    var res = await server.getData("/products");
   
    final Map<String, dynamic> parsed = json.decode(res.body);
    final result = ProductsResponse.fromJson(parsed);

    return result;
  }
}