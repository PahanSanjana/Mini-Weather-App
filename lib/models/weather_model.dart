class Weather {
  final String cityName;
  final double temperature;
  final String mainCondition;

  // Constructor
  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
  });

  // Factory method to create Weather from JSON
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: (json['main']['temp'] as num).toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}
