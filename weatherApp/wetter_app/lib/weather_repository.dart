import 'weather_data.dart';

class WeatherRepository {
  final WeatherData _weather = WeatherData(
    city: 'Tübingen',
    temperature: 18,
    weatherCondition: 'Rains',
  );

  WeatherData getWeather() {
    return _weather;
  }
}
