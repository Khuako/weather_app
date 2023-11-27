import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:weather/data/services/open_weather_service.dart';
import 'package:weather/models/weather_model.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.loading()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_SearchCityEvent>(_onSearchCity);
  }

  Position? curPosition;
  final OpenWeatherService openWeatherService = OpenWeatherService();
  WeatherModel? currentWeather;
  List<WeatherModel>? curWeatherForecast;
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  void _onSearchCity(
    _SearchCityEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.searchLoading());
    try {
      final res = await openWeatherService.getWeatherLocationByCity(event.query);
      final res1 = await openWeatherService.getFiveDaysByCity(event.query);
      emit(
        HomeState.initial(mainWeather: res ?? WeatherModel(), weatherForecast: [
          res1?[0],
          res1?[7],
          res1?[15],
          res1?[23],
          res1?[30],
        ]),
      );
    } catch (e) {
      emit(const HomeState.info(
          message: 'Не удалось загрузить данные о городе'));

      final res = await openWeatherService.getWeatherLocation(
        curPosition?.latitude ?? 0,
        curPosition?.longitude ?? 0,
      );
      final res1 = await openWeatherService.getFiveDays(
        curPosition?.latitude ?? 0,
        curPosition?.longitude ?? 0,
      );
      emit(
        HomeState.initial(
          mainWeather: currentWeather ?? WeatherModel(),
          weatherForecast: [
            curWeatherForecast?[0],
            curWeatherForecast?[7],
            curWeatherForecast?[15],
            curWeatherForecast?[23],
            curWeatherForecast?[30],
          ],
        ),
      );
    }
  }

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    try {
      curPosition = await _determinePosition();
      final res = await openWeatherService.getWeatherLocation(
        curPosition?.latitude ?? 0,
        curPosition?.longitude ?? 0,
      );
      final res1 = await openWeatherService.getFiveDays(
        curPosition?.latitude ?? 0,
        curPosition?.longitude ?? 0,
      );
      currentWeather = res;
      if(res1 != null){
        curWeatherForecast = res1;
      }
      emit(
        HomeState.initial(mainWeather: res ?? WeatherModel(), weatherForecast: [
          res1?[0],
          res1?[7],
          res1?[15],
          res1?[23],
          res1?[30],
        ]),
      );
    } catch (e) {
      emit(HomeState.info(message: e.toString()));
    }
  }
}
