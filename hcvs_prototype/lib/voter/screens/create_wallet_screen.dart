import 'package:flutter/material.dart';
import '/voter/screens/voter_home_screen.dart';

class CreateWallet extends StatefulWidget {
  const CreateWallet({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateWallet> createState() => _CreateWalletState();
}

class _CreateWalletState extends State<CreateWallet> {
  @override
  Widget build(BuildContext context) {
    const mnemonic =
        "service adult inside joke immune robot weasel gym element lizard analyst buzz";
    final mnemonicWords = mnemonic.split(' ');

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Please copy your mnemonic.\n It won't be backed up or changed",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24.0),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: mnemonicWords.map(
                    (word) {
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          word,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
                const SizedBox(height: 24.0),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("COPIED!!"),
                      ),
                    );
                  },
                  icon: const Icon(Icons.copy),
                  label: const Text("Copy to clipboard"),
                ),
                const SizedBox(height: 24.0),
                ElevatedButton.icon(
                  onPressed: () async {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VoterHomeScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_circle_right_outlined),
                  label: const Icon(Icons.home),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
