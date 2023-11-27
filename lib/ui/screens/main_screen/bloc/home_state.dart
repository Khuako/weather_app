part of 'home_bloc.dart';
@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial({required WeatherModel mainWeather,required List<WeatherModel?> weatherForecast}) = _InitialHomeState;

  const factory HomeState.info({
    required String message,
  }) = _InfoState;

  const factory HomeState.loading() = _LoadingState;
  const factory HomeState.searchLoading() = _SearchLoadingState;
}
