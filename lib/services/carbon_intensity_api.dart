import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/intensity_model.dart';

class CarbonIntensityApi {
  static const String baseUrl = 'https://api.carbonintensity.org.uk';

  // Fetch current intensity
  static Future<int> fetchCurrentIntensity() async {
    final response = await http.get(Uri.parse('$baseUrl/intensity'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['data'][0]['intensity']['actual'];
    } else {
      throw Exception('Failed to load current intensity');
    }
  }

  // Fetch half-hourly intensity
  static Future<List<CarbonIntensity>> fetchTodayIntensity() async {
    final today = DateTime.now().toIso8601String().split('T')[0];

    final response = await http.get(Uri.parse('$baseUrl/intensity/date/$today'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'] as List;
      // Map the API data to your model
      return data.map((item) {
        // Handle the null case for 'actual' intensity
        return CarbonIntensity.fromJson(item);
      }).toList();
    } else {
      throw Exception('Failed to load daily intensity');
    }
  }
}
