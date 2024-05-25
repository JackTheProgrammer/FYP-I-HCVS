import 'package:flutter/material.dart';
import '/EDA/pages/all_users_stats.dart';
import '/config/colors.dart';

class EDAPage extends StatefulWidget {
  const EDAPage({Key? key}) : super(key: key);

  @override
  State<EDAPage> createState() => _EDAPageState();
}

class _EDAPageState extends State<EDAPage> {
  bool isVetted = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            children: [
              IgnorePointer(
                ignoring: isVetted,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isVetted ? kIgnoreColor : kFillColor,
                  ),
                  onPressed: () {
                    setState(() {
                      isVetted = !isVetted;
                    });
                  },
                  child: const Text(
                    "Candidate vetting",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllUsersStats(),
                    ),
                  );
                },
                icon: const Icon(Icons.dashboard),
                label: const Text("User stats"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
