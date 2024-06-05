import 'package:flutter_application_1/features/cryptoCoin/cryptoCoin.dart';
import 'package:flutter_application_1/features/cryptoHome/cryptoHome.dart';

final routers = {
  '/': (context) => const HomePageScreen(title: 'FlutterDemo1'),
  '/coin': (context) => const CryptoCoinScreen(),
};
