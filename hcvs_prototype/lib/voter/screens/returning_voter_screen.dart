import 'package:flutter/material.dart';
import '/voter/screens/voter_home_screen.dart';

class ReturningVoterScreen extends StatefulWidget {
  const ReturningVoterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ReturningVoterScreen> createState() => _ReturningVoterScreenState();
}

class _ReturningVoterScreenState extends State<ReturningVoterScreen> {
  final _mnemonicController = TextEditingController();

  @override
  void dispose() {
    _mnemonicController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const voterName = "Aaron Smith";
    const voterID = "161gceq05ah";
    String mnemonic =
        "service adult inside joke immune robot weasel gym element lizard analyst buzz";

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              const Text("Voter ID: $voterID\nVoter name: $voterName"),
              TextFormField(
                controller: _mnemonicController..text = mnemonic,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.6),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  hintText: "Enter mnemonic",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VoterHomeScreen(),
                    ),
                  );
                },
                child: const Icon(Icons.home_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
