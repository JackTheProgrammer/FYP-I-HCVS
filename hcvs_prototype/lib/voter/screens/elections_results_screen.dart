import 'package:flutter/material.dart';

class ElectionsResultsScreen extends StatefulWidget {
  const ElectionsResultsScreen({Key? key}) : super(key: key);

  @override
  State<ElectionsResultsScreen> createState() => _ElectionsResultsScreenState();
}

class _ElectionsResultsScreenState extends State<ElectionsResultsScreen> {
  @override
  Widget build(BuildContext context) {
    const candidateID = "161gceq05ah";
    const candidateName = "Aaron Smith";

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50.0,
              width: 120.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(13.0),
                ),
                color: Colors.white60,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 1),
                    blurRadius: 0.7,
                  ),
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, -1),
                    blurRadius: 0.7,
                  ),
                ],
              ),
              child: const Center(
                child: Text("Elections result"),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Candidate ID: $candidateID\nCandidate name: $candidateName",
            ),
          ],
        ),
      ),
    );
  }
}
