import 'package:flutter/material.dart';
import '/data/entities_records.dart';
import '/voter/screens/elections_results_screen.dart';

class VoterHomeScreen extends StatefulWidget {
  const VoterHomeScreen({Key? key}) : super(key: key);

  @override
  State<VoterHomeScreen> createState() => _VoterHomeScreenState();
}

class _VoterHomeScreenState extends State<VoterHomeScreen> {
  bool hasVoted = false;

  Widget noVoting() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("No election"),
            Image.asset(
              "asset/young_man_relaxing.png",
              width: 150,
              height: 190,
            ),
          ],
        ),
      ),
    );
  }

  Widget ballot() {
    final size = MediaQuery.of(context).size;
    final candidates = getCandidates();

    return hasVoted == false
        ? Center(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: candidates.map((candidate) {
                return Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text("Name: ${candidate["name"]}"),
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            hasVoted = !hasVoted;
                          });
                        },
                        icon: const Icon(Icons.ballot),
                        label: const Text("Cast vote"),
                      ),
                      Text("ID: ${candidate["id"]}"),
                    ],
                  ),
                );
              }).toList(),
            ),
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Vote casted! 👍"),
                Container(
                  width: size.width * 0.014,
                  height: size.height * 0.014,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const Icon(
                    Icons.add_task_outlined,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    String pubKey = "0xcB6E379EC40F33470eE13d88AF843bF9c871E8Ed";
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              ElevatedButton.icon(
                onPressed: () {
                  final scaffoldMessenger = ScaffoldMessenger.of(context);
                  scaffoldMessenger.showSnackBar(
                    const SnackBar(
                      content: Text("COPIED!!!"),
                    ),
                  );
                },
                icon: const Icon(Icons.copy),
                label: Text(
                  pubKey,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("No voting")),
                Tab(child: Text("Elections results")),
                Tab(child: Text("Ballot")),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              noVoting(),
              const ElectionsResultsScreen(),
              ballot(),
            ],
          ),
        ),
      ),
    );
  }
}
