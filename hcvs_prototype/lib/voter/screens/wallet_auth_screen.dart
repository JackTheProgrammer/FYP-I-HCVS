import 'package:flutter/material.dart';
import '../widgets/wallet_auth_logo.dart';
import 'create_wallet_screen.dart';
import 'import_wallet_screen.dart';

class WalletAuthScreen extends StatefulWidget {
  const WalletAuthScreen({
    super.key,
  });

  @override
  State<WalletAuthScreen> createState() => _WalletAuthScreenState();
}

class _WalletAuthScreenState extends State<WalletAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 120),
          const WalletAuthLogo(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SafeArea(
                        child: ImportWalletScreen(),
                      ),
                    ),
                  );
                },
                child: const Text("Import wallet"),
              ),
              const SizedBox(width: 10.0),
              const Text(
                "OR",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SafeArea(
                        child: CreateWallet(),
                      ),
                    ),
                  );
                },
                child: const Text("Create wallet"),
              ),
            ],
          ),
          // const SizedBox(height: 20),
          // ElevatedButton.icon(
          //   onPressed: () {
          //     SystemNavigator.pop();
          //   },
          //   icon: const Icon(Icons.close),
          //   label: const Text("Close the app"),
          // ),
        ],
      ),
    );
  }
}
