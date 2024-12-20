import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/intensity_model.dart';

class IntensityGraph extends StatelessWidget {
  final List<CarbonIntensity> data;

  const IntensityGraph({required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: data.map((d) {
                final time = DateTime.parse(d.from).hour.toDouble();
                return FlSpot(time, d.intensity.toDouble());
              }).toList(),
              isCurved: true,
              color: Colors.green,
              barWidth: 4,
              dotData: FlDotData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}
