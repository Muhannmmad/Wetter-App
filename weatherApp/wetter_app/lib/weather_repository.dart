import 'weather_data.dart';

class WeatherRepository {
  final WeatherData weather = WeatherData(
    city: 'Tübingen',
    temperature: 18,
    weatherCondition: 'Rains',
  );

  WeatherData getWeather() {
    return weather;
  }
}
