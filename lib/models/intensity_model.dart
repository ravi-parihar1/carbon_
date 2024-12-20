class CarbonIntensity {
  final String from;
  final String to;
  final int intensity;

  CarbonIntensity({required this.from, required this.to, required this.intensity});

  factory CarbonIntensity.fromJson(Map<String, dynamic> json) {
    return CarbonIntensity(
      from: json['from'],
      to: json['to'],
      intensity: json['intensity']['actual'],
    );
  }
}
