import 'package:flutter/material.dart';

class ConnectWallet extends StatelessWidget {
  const ConnectWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Connect to a Wallet"),
      ),
    );
  }
}
