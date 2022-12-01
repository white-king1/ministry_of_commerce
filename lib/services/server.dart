// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';
import 'dart:io';
import '../widget/getit.dart';
import 'local_storage_service.dart';
import 'package:http/http.dart' as http;

class Server {
  final _url = "https://dummyjson.com";
  
  String? token;

  _getToken() async {
    token = getIt.get<LocalStorageService>().getUserToken();
  }

  authData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: _setHeaders());
  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    var response;
    try {
      await _getToken();
      response = await http.get(Uri.parse(fullUrl), headers: _setHeaders());
    } on SocketException {
      print('Error in network connection');
    }
    return response;
  }

  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    await _getToken();
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: _setHeaders());
  }

  _setHeaders() => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
}