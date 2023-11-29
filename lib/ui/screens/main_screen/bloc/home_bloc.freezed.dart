// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) searchCity,
    required TResult Function() goHomeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? searchCity,
    TResult? Function()? goHomeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? searchCity,
    TResult Function()? goHomeLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GoHomeLocationEvent value) goHomeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GoHomeLocationEvent value)? goHomeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GoHomeLocationEvent value)? goHomeLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  const _$InitialEventImpl();

  @override
  String toString() {
    return 'HomeEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) searchCity,
    required TResult Function() goHomeLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? searchCity,
    TResult? Function()? goHomeLocation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? searchCity,
    TResult Function()? goHomeLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GoHomeLocationEvent value) goHomeLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GoHomeLocationEvent value)? goHomeLocation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GoHomeLocationEvent value)? goHomeLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements HomeEvent {
  const factory _InitialEvent() = _$InitialEventImpl;
}

/// @nodoc
abstract class _$$SearchCityEventImplCopyWith<$Res> {
  factory _$$SearchCityEventImplCopyWith(_$SearchCityEventImpl value,
          $Res Function(_$SearchCityEventImpl) then) =
      __$$SearchCityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCityEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchCityEventImpl>
    implements _$$SearchCityEventImplCopyWith<$Res> {
  __$$SearchCityEventImplCopyWithImpl(
      _$SearchCityEventImpl _value, $Res Function(_$SearchCityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchCityEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCityEventImpl implements _SearchCityEvent {
  const _$SearchCityEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'HomeEvent.searchCity(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCityEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCityEventImplCopyWith<_$SearchCityEventImpl> get copyWith =>
      __$$SearchCityEventImplCopyWithImpl<_$SearchCityEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) searchCity,
    required TResult Function() goHomeLocation,
  }) {
    return searchCity(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? searchCity,
    TResult? Function()? goHomeLocation,
  }) {
    return searchCity?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? searchCity,
    TResult Function()? goHomeLocation,
    required TResult orElse(),
  }) {
    if (searchCity != null) {
      return searchCity(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GoHomeLocationEvent value) goHomeLocation,
  }) {
    return searchCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GoHomeLocationEvent value)? goHomeLocation,
  }) {
    return searchCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GoHomeLocationEvent value)? goHomeLocation,
    required TResult orElse(),
  }) {
    if (searchCity != null) {
      return searchCity(this);
    }
    return orElse();
  }
}

abstract class _SearchCityEvent implements HomeEvent {
  const factory _SearchCityEvent(final String query) = _$SearchCityEventImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchCityEventImplCopyWith<_$SearchCityEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoHomeLocationEventImplCopyWith<$Res> {
  factory _$$GoHomeLocationEventImplCopyWith(_$GoHomeLocationEventImpl value,
          $Res Function(_$GoHomeLocationEventImpl) then) =
      __$$GoHomeLocationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoHomeLocationEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GoHomeLocationEventImpl>
    implements _$$GoHomeLocationEventImplCopyWith<$Res> {
  __$$GoHomeLocationEventImplCopyWithImpl(_$GoHomeLocationEventImpl _value,
      $Res Function(_$GoHomeLocationEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoHomeLocationEventImpl implements _GoHomeLocationEvent {
  const _$GoHomeLocationEventImpl();

  @override
  String toString() {
    return 'HomeEvent.goHomeLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoHomeLocationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) searchCity,
    required TResult Function() goHomeLocation,
  }) {
    return goHomeLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? searchCity,
    TResult? Function()? goHomeLocation,
  }) {
    return goHomeLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? searchCity,
    TResult Function()? goHomeLocation,
    required TResult orElse(),
  }) {
    if (goHomeLocation != null) {
      return goHomeLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_SearchCityEvent value) searchCity,
    required TResult Function(_GoHomeLocationEvent value) goHomeLocation,
  }) {
    return goHomeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_SearchCityEvent value)? searchCity,
    TResult? Function(_GoHomeLocationEvent value)? goHomeLocation,
  }) {
    return goHomeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_SearchCityEvent value)? searchCity,
    TResult Function(_GoHomeLocationEvent value)? goHomeLocation,
    required TResult orElse(),
  }) {
    if (goHomeLocation != null) {
      return goHomeLocation(this);
    }
    return orElse();
  }
}

abstract class _GoHomeLocationEvent implements HomeEvent {
  const factory _GoHomeLocationEvent() = _$GoHomeLocationEventImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)
        initial,
    required TResult Function(String message) info,
    required TResult Function() loading,
    required TResult Function() searchLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult? Function(String message)? info,
    TResult? Function()? loading,
    TResult? Function()? searchLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult Function(String message)? info,
    TResult Function()? loading,
    TResult Function()? searchLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_InfoState value) info,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SearchLoadingState value) searchLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SearchLoadingState value)? searchLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_InfoState value)? info,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SearchLoadingState value)? searchLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialHomeStateImplCopyWith<$Res> {
  factory _$$InitialHomeStateImplCopyWith(_$InitialHomeStateImpl value,
          $Res Function(_$InitialHomeStateImpl) then) =
      __$$InitialHomeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherModel mainWeather, List<WeatherModel?> weatherForecast});
}

/// @nodoc
class __$$InitialHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialHomeStateImpl>
    implements _$$InitialHomeStateImplCopyWith<$Res> {
  __$$InitialHomeStateImplCopyWithImpl(_$InitialHomeStateImpl _value,
      $Res Function(_$InitialHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainWeather = null,
    Object? weatherForecast = null,
  }) {
    return _then(_$InitialHomeStateImpl(
      mainWeather: null == mainWeather
          ? _value.mainWeather
          : mainWeather // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
      weatherForecast: null == weatherForecast
          ? _value._weatherForecast
          : weatherForecast // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel?>,
    ));
  }
}

/// @nodoc

class _$InitialHomeStateImpl implements _InitialHomeState {
  const _$InitialHomeStateImpl(
      {required this.mainWeather,
      required final List<WeatherModel?> weatherForecast})
      : _weatherForecast = weatherForecast;

  @override
  final WeatherModel mainWeather;
  final List<WeatherModel?> _weatherForecast;
  @override
  List<WeatherModel?> get weatherForecast {
    if (_weatherForecast is EqualUnmodifiableListView) return _weatherForecast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherForecast);
  }

  @override
  String toString() {
    return 'HomeState.initial(mainWeather: $mainWeather, weatherForecast: $weatherForecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialHomeStateImpl &&
            (identical(other.mainWeather, mainWeather) ||
                other.mainWeather == mainWeather) &&
            const DeepCollectionEquality()
                .equals(other._weatherForecast, _weatherForecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mainWeather,
      const DeepCollectionEquality().hash(_weatherForecast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialHomeStateImplCopyWith<_$InitialHomeStateImpl> get copyWith =>
      __$$InitialHomeStateImplCopyWithImpl<_$InitialHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)
        initial,
    required TResult Function(String message) info,
    required TResult Function() loading,
    required TResult Function() searchLoading,
  }) {
    return initial(mainWeather, weatherForecast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult? Function(String message)? info,
    TResult? Function()? loading,
    TResult? Function()? searchLoading,
  }) {
    return initial?.call(mainWeather, weatherForecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult Function(String message)? info,
    TResult Function()? loading,
    TResult Function()? searchLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(mainWeather, weatherForecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_InfoState value) info,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SearchLoadingState value) searchLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SearchLoadingState value)? searchLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_InfoState value)? info,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SearchLoadingState value)? searchLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHomeState implements HomeState {
  const factory _InitialHomeState(
          {required final WeatherModel mainWeather,
          required final List<WeatherModel?> weatherForecast}) =
      _$InitialHomeStateImpl;

  WeatherModel get mainWeather;
  List<WeatherModel?> get weatherForecast;
  @JsonKey(ignore: true)
  _$$InitialHomeStateImplCopyWith<_$InitialHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InfoStateImplCopyWith<$Res> {
  factory _$$InfoStateImplCopyWith(
          _$InfoStateImpl value, $Res Function(_$InfoStateImpl) then) =
      __$$InfoStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InfoStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InfoStateImpl>
    implements _$$InfoStateImplCopyWith<$Res> {
  __$$InfoStateImplCopyWithImpl(
      _$InfoStateImpl _value, $Res Function(_$InfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InfoStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InfoStateImpl implements _InfoState {
  const _$InfoStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.info(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoStateImplCopyWith<_$InfoStateImpl> get copyWith =>
      __$$InfoStateImplCopyWithImpl<_$InfoStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)
        initial,
    required TResult Function(String message) info,
    required TResult Function() loading,
    required TResult Function() searchLoading,
  }) {
    return info(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult? Function(String message)? info,
    TResult? Function()? loading,
    TResult? Function()? searchLoading,
  }) {
    return info?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult Function(String message)? info,
    TResult Function()? loading,
    TResult Function()? searchLoading,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_InfoState value) info,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SearchLoadingState value) searchLoading,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SearchLoadingState value)? searchLoading,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_InfoState value)? info,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SearchLoadingState value)? searchLoading,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class _InfoState implements HomeState {
  const factory _InfoState({required final String message}) = _$InfoStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InfoStateImplCopyWith<_$InfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)
        initial,
    required TResult Function(String message) info,
    required TResult Function() loading,
    required TResult Function() searchLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult? Function(String message)? info,
    TResult? Function()? loading,
    TResult? Function()? searchLoading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult Function(String message)? info,
    TResult Function()? loading,
    TResult Function()? searchLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_InfoState value) info,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SearchLoadingState value) searchLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SearchLoadingState value)? searchLoading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_InfoState value)? info,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SearchLoadingState value)? searchLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements HomeState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SearchLoadingStateImplCopyWith<$Res> {
  factory _$$SearchLoadingStateImplCopyWith(_$SearchLoadingStateImpl value,
          $Res Function(_$SearchLoadingStateImpl) then) =
      __$$SearchLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SearchLoadingStateImpl>
    implements _$$SearchLoadingStateImplCopyWith<$Res> {
  __$$SearchLoadingStateImplCopyWithImpl(_$SearchLoadingStateImpl _value,
      $Res Function(_$SearchLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchLoadingStateImpl implements _SearchLoadingState {
  const _$SearchLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.searchLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)
        initial,
    required TResult Function(String message) info,
    required TResult Function() loading,
    required TResult Function() searchLoading,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult? Function(String message)? info,
    TResult? Function()? loading,
    TResult? Function()? searchLoading,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WeatherModel mainWeather, List<WeatherModel?> weatherForecast)?
        initial,
    TResult Function(String message)? info,
    TResult Function()? loading,
    TResult Function()? searchLoading,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_InfoState value) info,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SearchLoadingState value) searchLoading,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SearchLoadingState value)? searchLoading,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_InfoState value)? info,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SearchLoadingState value)? searchLoading,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingState implements HomeState {
  const factory _SearchLoadingState() = _$SearchLoadingStateImpl;
}
