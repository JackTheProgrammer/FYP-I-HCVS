import 'package:flutter/material.dart';
import '/voter/screens/wallet_auth_screen.dart';
import '/voter/screens/returning_voter_screen.dart';

class OrganizationAuthScreen extends StatefulWidget {
  const OrganizationAuthScreen({Key? key}) : super(key: key);

  @override
  State<OrganizationAuthScreen> createState() => _OrganizationAuthScreenState();
}

class _OrganizationAuthScreenState extends State<OrganizationAuthScreen> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String voterID = "161gceq05ah";

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              const SizedBox(height: 120),
              Container(
                width: 200.0,
                height: 120.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: Image.asset(
                      "asset/corporate_employee.png",
                    ).image,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _textEditingController..text = voterID,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.7),
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  hintText: "Enter your organization id",
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReturningVoterScreen(),
                    ),
                  );
                },
                child: const Text("Login"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SafeArea(
                        child: WalletAuthScreen(),
                      ),
                    ),
                  );
                },
                child: const Text("Wallet Auth"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
