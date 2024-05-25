import 'package:flutter/material.dart';
import '/candidate/result/individual_result.dart';
import '../widgets/election_result_chart.dart';
import '/data/election_results.dart';
import '/model/result_candidate.dart';

class CandidatesResult extends StatefulWidget {
  const CandidatesResult({Key? key}) : super(key: key);

  @override
  State<CandidatesResult> createState() => _CandidatesResultState();
}

class _CandidatesResultState extends State<CandidatesResult> {
  @override
  Widget build(BuildContext context) {
    CandidateResult loggedInCandidate = getCandidateResult("fcef1aee09");
    CandidateResult winningCandidate =
        getElectionsResult().reduce((a, b) => a.votes > b.votes ? a : b);

    return SafeArea(
      child: Scaffold(
        body: Wrap(
          alignment: WrapAlignment.center,
          children: [
            ListTile(
              title: Text('You: ${loggedInCandidate.name}'),
              subtitle: Text('Your votes: ${loggedInCandidate.votes}'),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text('Winning Candidate: ${winningCandidate.name}'),
              subtitle: Text('Votes: ${winningCandidate.votes}'),
            ),
            const SizedBox(height: 20),
            const Text("Election results"),
            ElectionResultsChart(
              electionResults: getElectionsResult(),
            ),
          ],
        ),
      ),
    );
  }
}
