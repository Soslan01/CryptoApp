import 'package:flutter_application_1/repositories/cryptoCoins/models/CryptoCoin.dart';

abstract class AbstractCoinsRepostiory {
  Future<List<CryptoCoin >> getCoinsList();
}