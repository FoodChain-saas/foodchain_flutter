import 'package:flutter/material.dart';

class ConnectWaallet extends StatelessWidget {
  const ConnectWaallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
              child: Text(
            "Connect to a Wallet",
            style: TextStyle(color: Color(0xFF1129FC), fontSize: 24),
          )),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    trailing: Image.asset('images/MetaMaskBadge.png'),
                    title: const Text('MetaMask'),
                    onTap: () {
                      // Handle item 1 tap
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    trailing: Image.asset('images/Blockchain.png'),
                    title: const Text('Trust Wallet'),
                    onTap: () {
                      // Handle item 2 tap
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    trailing: Image.asset('assets/images/wallet connect.png'),
                    title: const Text('Wallet Connect'),
                    onTap: () {
                      // Handle item 3 tap
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    trailing: Image.asset('images/BinanceBadge.png'),
                    title: const Text('Binance chain wallet'),
                    onTap: () {
                      // Handle item 3 tap
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    trailing: Image.asset('assets/images/Argen x.png'),
                    title: const Text('Argen x'),
                    onTap: () {
                      // Handle item 3 tap
                    },
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 342,
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
                          backgroundColor: const Color(0xFF1A66FF),
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
              ],
            ),
          ),
        ));
  }
}
