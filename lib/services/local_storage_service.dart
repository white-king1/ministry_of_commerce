// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final SharedPreferences prefs;

  LocalStorageService(this.prefs);

  Future<void> setToken(String token) async {
    prefs.setString("MinistryToken", token);
  }

  String? getUserToken() {
    return prefs.getString("MinistryToken");
  }

  Future<void> setName(_name) async {
    prefs.setString('MinistryName', _name);
  }

  Future<void> setEmail(_email) async {
    prefs.setString('MinistryEmail', _email);
  }

   String? getEmail() {
    return prefs.getString("MinistryEmail");
  }
}
