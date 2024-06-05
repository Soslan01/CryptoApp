import 'package:flutter/material.dart';
import 'package:flutter_application_1/repositories/cryptoCoins/models/CryptoCoin.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
        
        leading: Image.network(coin.imageURL),
        title: Text(
          coin.name,
          style: theme.textTheme.bodyMedium,
        ),
        subtitle: Text(
          '${coin.priceInUSD}\$',
          style: theme.textTheme.labelSmall,
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.of(context).pushNamed(
            '/coin',
            arguments: coin,
          );
        });
  }
}