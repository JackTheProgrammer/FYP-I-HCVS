import 'package:flutter/material.dart';
import '/system_admin/screens/sys_admin_home.dart';

class SysAdminAuth extends StatefulWidget {
  const SysAdminAuth({Key? key}) : super(key: key);

  @override
  State<SysAdminAuth> createState() => _SysAdminAuthState();
}

class _SysAdminAuthState extends State<SysAdminAuth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              const SizedBox(height: 120),
              Container(
                width: 200.0,
                height: 120.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: Image.asset(
                      "asset/system_admin.png",
                    ).image,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.7),
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  hintText: "Enter your System Admin password",
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SysAdminHome(),
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
