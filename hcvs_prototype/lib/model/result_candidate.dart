class CandidateResult {
  final String name;
  final String id;
  final int votes;

  CandidateResult({
    required this.name,
    required this.id,
    required this.votes,
  });

  factory CandidateResult.fromMap(Map candidate) {
    return CandidateResult(
      name: candidate["name"],
      id: candidate["id"],
      votes: candidate["votes"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'votes': votes,
    };
  }
}
