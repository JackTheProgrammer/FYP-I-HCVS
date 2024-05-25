import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '/EDA/data/chart_data.dart';

class AllUsersStats extends StatefulWidget {
  const AllUsersStats({Key? key}) : super(key: key);

  @override
  State<AllUsersStats> createState() => _AllUsersStatsState();
}

class _AllUsersStatsState extends State<AllUsersStats> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: 250,
            width: 300,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Text("User stats"),
                PieChart(
                  PieChartData(
                    sections: chartSectionData(),
                  ),
                  swapAnimationCurve: Curves.easeInOut,
                  swapAnimationDuration: const Duration(milliseconds: 750),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
