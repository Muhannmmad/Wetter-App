import 'package:flutter/material.dart';
import 'weather_repository.dart';
import 'weather_data.dart';

void main() {
  WeatherRepository weatherRepository = WeatherRepository();

  runApp(MainApp(weatherRepository: weatherRepository));
}

class MainApp extends StatelessWidget {
  final WeatherRepository weatherRepository;

  const MainApp({super.key, required this.weatherRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(weatherRepository: weatherRepository),
    );
  }
}

class WeatherApp extends StatelessWidget {
  final WeatherRepository weatherRepository;
  const WeatherApp({super.key, required this.weatherRepository});

  @override
  Widget build(BuildContext context) {
    WeatherData weatherData = weatherRepository.getWeather();

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
        backgroundColor: const Color.fromARGB(255, 21, 3, 101),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'City: ${weatherData.city}',
              style: const TextStyle(
                color: Color.fromARGB(255, 22, 1, 113),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'Temperature: ${weatherData.temperature}°C',
              style: const TextStyle(
                color: Color.fromARGB(255, 17, 1, 132),
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'Weather: ${weatherData.weatherCondition}',
              style: const TextStyle(
                color: Color.fromARGB(255, 37, 6, 212),
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
