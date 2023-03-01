import 'package:weather_clean_arch/weather/domain/entities/weather.dart';
import 'package:weather_clean_arch/weather/domain/repository/base_weather_repository.dart';


/// Use Case : is the point that connect to Presentation Layer and make connection :
/// between Domain Layer & Presentation Layer .
class GetWeatherByCityNameUseCase {
  final BaseWeatherRepository repository;

  GetWeatherByCityNameUseCase(this.repository);

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
