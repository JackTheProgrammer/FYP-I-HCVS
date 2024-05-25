import '/data/election_results.dart';
import '/model/result_candidate.dart';

CandidateResult getCandidateResult(String id) {
  CandidateResult candidateResult =
      getElectionsResult().where((element) => element.id == id).first;
  return candidateResult;
}
