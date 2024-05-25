import 'package:flutter/material.dart';
import '/EDA/pages/admin_page.dart';

class EdaAuthPage extends StatefulWidget {
  const EdaAuthPage({Key? key}) : super(key: key);

  @override
  State<EdaAuthPage> createState() => _EdaAuthPageState();
}

class _EdaAuthPageState extends State<EdaAuthPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              const SizedBox(height: 120),
              Container(
                width: 200.0,
                height: 120.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: Image.asset(
                      "asset/corporate_employee.png",
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
                  hintText: "Enter your EDA password",
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EDAPage(),
                    ),
                  );
                },
                child: const Text("EDA page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
