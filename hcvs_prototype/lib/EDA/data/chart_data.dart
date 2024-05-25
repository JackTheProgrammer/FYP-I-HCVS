import 'package:fl_chart/fl_chart.dart' show PieChartSectionData;
import 'package:flutter/material.dart';
import '/data/entities_records.dart';

List<PieChartSectionData> chartSectionData() {
  final candidates = getCandidates().length.toDouble();
  final employees = getEmployees().length.toDouble();
  final voters = getVoters().length.toDouble();

  return [
    PieChartSectionData(
      value: candidates,
      color: Colors.blueGrey,
      showTitle: true,
      title: "Candidates",
    ),
    PieChartSectionData(
      value: employees,
      color: Colors.blueAccent,
      showTitle: true,
      title: "Employees",
    ),
    PieChartSectionData(
      value: voters,
      color: Colors.tealAccent,
      showTitle: true,
      title: "Voters",
    ),
  ];
}
