import '../entities/weather.dart';

/// Domain Repo : Contract Repo , for implement the Dependency Inversion Principle.

abstract class  WeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}