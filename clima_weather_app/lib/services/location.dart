import 'dart:core';

import 'package:linuxclock/services/networking.dart';
import 'dart:async';

class LocProvider {
  String apikey = '<add your key here>';

  NetworkHelper networkHelper = NetworkHelper();

  Future<dynamic> fetchGeodata(double x, double y) async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$x&lon=$y&appid=$apikey';
    var weatherData = await networkHelper.getData(url);

    return weatherData;
  }

  Future<dynamic> fetchCitydata(cityName) async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apikey';
    var weatherData = await networkHelper.getData(url);
    return weatherData;
  }
}
