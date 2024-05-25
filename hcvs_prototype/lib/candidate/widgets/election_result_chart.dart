// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '/data/election_results.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../model/result_candidate.dart';
import '../model/chart_data.dart';

class ElectionResultsChart extends StatelessWidget {
  final List<CandidateResult> electionResults;

  const ElectionResultsChart({super.key, required this.electionResults});

  @override
  Widget build(BuildContext context) {
    // return LineChart(
    //   LineChartData(
    //     titlesData: FlTitlesData(
    //       bottomTitles: AxisTitles(
    //         sideTitles: SideTitles(
    //           showTitles: true,
    //           getTitlesWidget: (value, tileMeta) {
    //             // Map the x-axis with candidate IDs
    //             return Text(electionResults[value.toInt()].id);
    //           },
    //         ),
    //       ),
    //       leftTitles: AxisTitles(
    //         sideTitles: SideTitles(
    //           showTitles: true,
    //           getTitlesWidget: (value, tileMeta) {
    //             // Display y-axis with candidate votes
    //             return Text(value.toInt().toString());
    //           },
    //         ),
    //       ),
    //     ),
    //     lineBarsData: [
    //       LineChartBarData(
    //         spots: electionResults.asMap().entries.map((entry) {
    //           return FlSpot(
    //             entry.key.toDouble(),
    //             entry.value.votes.toDouble(),
    //           );
    //         }).toList(),
    //         isCurved: true,
    //         color: Colors.blue,
    //         barWidth: 4,
    //         isStrokeCapRound: true,
    //         belowBarData: BarAreaData(show: false),
    //       ),
    //     ],
    //   ),
    // );
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      series: <CartesianSeries>[
        LineSeries<ChartData, String>(
          dataSource: getCharData(),
          xValueMapper: (data, _) => data.id,
          yValueMapper: (data, _) => data.votes,
        )
      ],
    );
  }
}
