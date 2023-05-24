import 'package:flutter/material.dart';

class ConnectWallet extends StatelessWidget {
  const ConnectWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Connect to a Wallet"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              trailing: Image.asset('svg/MetaMaskBadge.png'),
              title: Text('MetaMask'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                trailing: Image.asset('svg/Blockchain.png'),
                title: Text('Trust Wallet'),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                trailing: Image.asset('svg/wallet connect .png'),
                title: Text('Wallet Connect'),
                onTap: () {
                  // Handle item 3 tap
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                trailing: Image.asset('svg/wallet connect .png'),
                title: const Text('Binance chain walllet'),
                onTap: () {
                  // Handle item 3 tap
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                trailing: Image.asset('svg/Argen x .png'),
                title: const Text('Argen x'),
                onTap: () {
                  // Handle item 3 tap
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(
                top: 16,
                bottom: 16,
                left: 24,
                right: 24,
              ),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                  maximumSize: const Size(double.infinity, 100),
                  backgroundColor: Colors.teal,
                  side: const BorderSide(
                    color: Color(0xFF1A66FF),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Skip >>',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
