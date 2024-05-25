class Voter {
  final String name, id;

  Voter({
    required this.name,
    required this.id,
  });

  factory Voter.fromMap(Map voter) {
    return Voter(
      name: voter["name"],
      id: voter["id"],
    );
  }

  Map toMap() {
    return {
      "name": name,
      "id": id,
    };
  }
}
