import 'package:flutter/material.dart';
import '../system_admin/screens/sys_admin_auth.dart';
import '/candidate/screens/candidate_auth.dart';
import '/EDA/pages/eda_auth_page.dart';
import '/voter/screens/organization_auth_screen.dart';

class RolesScreen extends StatefulWidget {
  const RolesScreen({Key? key}) : super(key: key);

  @override
  State<RolesScreen> createState() => _RolesScreenState();
}

class _RolesScreenState extends State<RolesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrganizationAuthScreen(),
                    ),
                  );
                },
                child: const Text("Voter"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CandidateAuth(),
                    ),
                  );
                },
                child: const Text("Candidate"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EdaAuthPage(),
                    ),
                  );
                },
                child: const Text("EDA"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SysAdminAuth(),
                    ),
                  );
                },
                child: const Text("System Admin"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
