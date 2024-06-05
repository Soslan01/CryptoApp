import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/cryptoHome/widgets/widgets.dart';
import 'package:flutter_application_1/repositories/cryptoCoins/cryptoCoins.dart';
import 'package:flutter_application_1/repositories/cryptoCoins/cryptoCoinsRepository.dart';
import 'package:flutter_application_1/repositories/cryptoCoins/models/CryptoCoin.dart';
import 'package:get_it/get_it.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key, required this.title});
  final String title;
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

//HomePageState
class _HomePageScreenState extends State<HomePageScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _cryptoCoinsList == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: _cryptoCoinsList!.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];
                return CryptoCoinTile(coin: coin);
              }),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await GetIt.I<AbstractCoinsRepostiory>().getCoinsList();
    setState(() {});
  }
}
