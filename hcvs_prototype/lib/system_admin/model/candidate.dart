class Candidate {
  final String name, id;

  Candidate({
    required this.name,
    required this.id,
  });

  factory Candidate.fromMap(Map candidate) {
    return Candidate(
      name: candidate["name"],
      id: candidate["id"],
    );
  }

  Map toMap() {
    return {
      "name": name,
      "id": id,
    };
  }
}
