import 'package:weather/constants/constants.dart';
import 'package:weather/data/services/repository.dart';
import 'package:weather/models/weather_model.dart';

class OpenWeatherService {
  final Repository repository = Repository();

  Future<WeatherModel?> getWeatherLocation(double lat, double lon) async {
    final res = await repository.getMethod(
        path: 'https://api.openweathermap.org/data/2.5/weather',
        params: {
          "lat": lat,
          "lon": lon,
          "units": "metric",
          "lang": "ru",
          "appid": Constants.apiKey,
        });
    if (res.statusCode == 200) {
      return WeatherModel.fromJson(res.data);
    }
    return null;
  }

  Future<WeatherModel?> getWeatherLocationByCity(String city) async {
    final res = await repository.getMethod(
        path: 'https://api.openweathermap.org/data/2.5/weather',
        params: {
          "q": city.toLowerCase(),
          "units": "metric",
          "lang": "ru",
          "appid": Constants.apiKey,
        });
    if (res.statusCode == 200) {
      return WeatherModel.fromJson(res.data);
    }
    return null;
  }
  Future<List<WeatherModel>?> getFiveDaysByCity(String city) async {
    final res = await repository.getMethod(
        path: 'https://api.openweathermap.org/data/2.5/forecast',
        params: {
        "q":city.toLowerCase(),
          "units": "metric",
          "appid": Constants.apiKey,
        });
    if (res.statusCode == 200) {
      return (res.data["list"] as List)
          .map((e) => WeatherModel.fromJson(e))
          .toList();
    }
    return null;
  }
  Future<List<WeatherModel>?> getFiveDays(double lat, double lon) async {
    final res = await repository.getMethod(
        path: 'https://api.openweathermap.org/data/2.5/forecast',
        params: {
          "lat": lat,
          "lon": lon,
          "units": "metric",
          "appid": Constants.apiKey,
        });
    if (res.statusCode == 200) {
      return (res.data["list"] as List)
          .map((e) => WeatherModel.fromJson(e))
          .toList();
    }
    return null;
  }
}
