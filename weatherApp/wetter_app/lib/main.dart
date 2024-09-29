import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'City: Tübingen',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Temperature: 18°C',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Weather: Rains',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
