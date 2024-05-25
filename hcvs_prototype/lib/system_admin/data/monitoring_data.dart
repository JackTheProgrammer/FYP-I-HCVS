import '../model/candidate.dart';
import '../model/voter.dart';
import '/data/entities_records.dart';

List<Voter> getRegisteredVoters() {
  final voters = getVoters();
  final registeredVoters = <Voter>[];

  for (Map voter in voters) {
    registeredVoters.add(Voter.fromMap(voter));
  }

  return registeredVoters;
}

List<Candidate> getAllCandidates() {
  final candidates = getCandidates();
  final allCandidates = <Candidate>[];

  for (Map candidate in candidates) {
    allCandidates.add(Candidate.fromMap(candidate));
  }

  return allCandidates;
}
