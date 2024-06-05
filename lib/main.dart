import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/repositories/cryptoCoins/cryptoCoins.dart';
import 'package:get_it/get_it.dart';
import 'theme/MyApp.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractCoinsRepostiory>(
    () => CryptoCoinsRepository(dio: Dio()));
  runApp(const MyApp());
}
