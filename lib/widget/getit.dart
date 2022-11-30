import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:ministry_of_commerce/services/server.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/auth_service.dart';
import '../services/local_storage_service.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<AuthService>(() => AuthService());
  getIt.registerLazySingleton<Server>(() => Server());
  getIt.registerLazySingleton(() => LocalStorageService(sharedPreferences));
}