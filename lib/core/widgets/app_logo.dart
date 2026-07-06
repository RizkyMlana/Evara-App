import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget{
  const AppLogo({
    super.key,
    this.size = 80,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.account_balance_wallet_rounded,
      size: size,
    );
  }
}