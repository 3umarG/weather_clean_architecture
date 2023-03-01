import 'dart:convert';

import 'package:weather_clean_arch/core/utils/constants.dart';

import '../models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource extends BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          "${AppConstants.BASE_URL}weather?q=$countryName&appid=${AppConstants.appKey}");
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
