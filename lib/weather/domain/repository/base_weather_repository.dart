import '../entities/weather.dart';

/// Domain Repo : Contract Repo , for implement the Dependency Inversion Principle.

abstract class  BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}