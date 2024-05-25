import 'package:flutter/material.dart';
import '/config/colors.dart';
import '../../candidate/widgets/election_result_chart.dart';
import '../../data/election_results.dart';
import '../screens/election_entities_display.dart';
import '../widget/user_stats.dart';

class SysAdminHome extends StatefulWidget {
  const SysAdminHome({Key? key}) : super(key: key);

  @override
  State<SysAdminHome> createState() => _SysAdminHomeState();
}

class _SysAdminHomeState extends State<SysAdminHome> {
  bool isAdded = false;
  bool isElection = false;

  Widget electionButtons() {
    final addText = isAdded == false
        ? const Text(
            "Add voters & candidates",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        : const Text(
            "Added",
            style: TextStyle(
              color: Colors.white,
            ),
          );
    final addColor = isAdded == false ? kFillColor : kIgnoreColor;

    final electionText = isElection == false
        ? const Text(
            "Start elections",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        : const Text(
            "Stop elections",
            style: TextStyle(
              color: Colors.white,
            ),
          );
    final electionBtnColor = isElection == false ? Colors.green : Colors.red;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        IgnorePointer(
          ignoring: isAdded,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: addColor,
            ),
            onPressed: () {
              setState(() {
                isAdded = !isAdded;
              });
              final scaffoldMessengerState = ScaffoldMessenger.of(context);
              scaffoldMessengerState.showSnackBar(
                const SnackBar(
                  content: Text("Added"),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            child: addText,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: electionBtnColor,
          ),
          onPressed: () {
            setState(() {
              isElection = !isElection;
            });
          },
          child: electionText,
        ),
      ],
    );
  }

  Widget viewEntities() {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      children: <Widget>[
        const UserStats(),
        TextButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ElectionEntitiesDisplay(),
              ),
            );
          },
          icon: const Icon(Icons.monitor),
          label: const Text("Monitor entities"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            children: [
              viewEntities(),
              const Text("Elections results"),
              Wrap(
                children: [
                  ElectionResultsChart(
                    electionResults: getElectionsResult(),
                  ),
                ],
              ),
              electionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
