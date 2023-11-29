part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = _InitialEvent;
  const factory HomeEvent.searchCity(String query) = _SearchCityEvent;
  const factory HomeEvent.goHomeLocation() =_GoHomeLocationEvent;
}
