import 'package:flutter/material.dart';
import '/candidate/screens/candidates_result.dart';

class CandidateAuth extends StatefulWidget {
  const CandidateAuth({Key? key}) : super(key: key);

  @override
  State<CandidateAuth> createState() => _CandidateAuthState();
}

class _CandidateAuthState extends State<CandidateAuth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              const SizedBox(height: 120),
              Container(
                width: 250.0,
                height: 120.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: Image.asset(
                      "asset/vetted_professionals.png",
                    ).image,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.7),
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  hintText: "Enter your id",
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CandidatesResult(),
                    ),
                  );
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
