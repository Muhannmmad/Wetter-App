import 'package:flutter/material.dart';

class WeatherData {
  final String city;
  final double temperature;
  final String weatherCondition;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.weatherCondition,
  });
}

void main() {
  // Create an example WeatherData object
  WeatherData exampleWeather = WeatherData(
    city: 'Tübingen',
    temperature: 18,
    weatherCondition: 'Rains',
  );

  runApp(MainApp(weatherData: exampleWeather));
}

class MainApp extends StatelessWidget {
  final WeatherData weatherData;

  const MainApp({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(weatherData: weatherData),
    );
  }
}

class WeatherApp extends StatelessWidget {
  final WeatherData weatherData;
  const WeatherApp({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display city from WeatherData
            Text(
              'City: ${weatherData.city}',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Display temperature from WeatherData
            Text(
              'Temperature: ${weatherData.temperature}°C',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Display weather condition from WeatherData
            Text(
              'Weather: ${weatherData.weatherCondition}',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
