import 'package:flutter/material.dart';
import '/voter/screens/voter_home_screen.dart';

class ImportWalletScreen extends StatefulWidget {
  const ImportWalletScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ImportWalletScreen> createState() => _ImportWalletScreenState();
}

class _ImportWalletScreenState extends State<ImportWalletScreen> {
  final textEditingController = TextEditingController();
  bool isVerified = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool mnemonicObscure = true;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String mnemonic =
        "service adult inside joke immune robot weasel gym element lizard analyst buzz";
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 60.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(.38),
                  image: DecorationImage(
                    image: Image.asset(
                      "asset/import-wallet.png",
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(13.0),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 22.0,
                ),
                child: TextFormField(
                  controller: textEditingController..text = mnemonic,
                  key: formKey,
                  obscureText: mnemonicObscure,
                  decoration: InputDecoration(
                    hintText: "Enter mnemonic",
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    suffix: IconButton(
                      icon: mnemonicObscure == true
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          mnemonicObscure = !mnemonicObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VoterHomeScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.home),
                label: const Icon(Icons.forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
