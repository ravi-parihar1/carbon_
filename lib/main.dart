import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(CarbonIntensityApp());
}

class CarbonIntensityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carbon Intensity Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
//d