import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../EDA/data/chart_data.dart';

class UserStats extends StatelessWidget {
  const UserStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Text("User stats"),
        SizedBox(
          height: 200,
          width: 350,
          child: PieChart(
            PieChartData(
              sections: chartSectionData(),
            ),
            swapAnimationCurve: Curves.easeInOut,
            swapAnimationDuration: const Duration(milliseconds: 750),
          ),
        ),
      ],
    );
  }
}
