import 'package:flutter/material.dart';

class CurrentIntensity extends StatelessWidget {
  final int intensity;

  const CurrentIntensity({required this.intensity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Current Carbon Intensity: $intensity gCO₂/kWh',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
    //sfsdf

  }
}
