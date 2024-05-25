import '../candidate/model/chart_data.dart';
import '/model/result_candidate.dart';

var electionResults = [
  {
    "name": "Aaron Smith",
    "id": '161gceq05ah',
    "votes": 456,
  },
  {
    "name": "Abraham Tyler",
    "id": 'aee11098cb',
    "votes": 444,
  },
  {
    "name": "Benjamin Winston",
    "id": 'cfcfaaee09',
    "votes": 445,
  },
  {
    "name": "Bohr Danny",
    "id": '0aeecfaea11',
    "votes": 446,
  },
  {
    "name": "Aaron Snyder",
    "id": 'aaedc514',
    "votes": 447,
  },
  {
    "name": "Abraham Peterson",
    "id": '00caeaccd1',
    "votes": 443,
  },
  {
    "name": "Benjamin Franklin",
    "id": 'fcef1aee09',
    "votes": 439,
  },
  {
    "name": "Bohr Daniel",
    "id": '9afecdeea31',
    "votes": 430,
  },
];

List<CandidateResult> getElectionsResult() {
  List<CandidateResult> results = [];
  for (Map candidate in electionResults) {
    var candidateResult = CandidateResult.fromMap(candidate);
    results.add(candidateResult);
  }
  return results;
}

List<ChartData> getCharData() {
  final dataList = <ChartData>[];
  for (CandidateResult result in getElectionsResult()) {
    dataList.add(
      ChartData(
        id: result.id,
        votes: result.votes,
      ),
    );
  }
  return dataList;
}
