import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ApiClient {
  static ApiClient? _instance;

  factory ApiClient() => _instance ??= ApiClient._();

  ApiClient._();

  late Dio client;

  DioError? error;
  ErrorInterceptorHandler? handler;
  String updatePath = '';
  late BuildContext clientContext;

  Future<bool> initClient({
    required String url,
    required String updateTokenPath,
    required BuildContext context,
  }) async {
    bool result = false;
    updatePath = updateTokenPath;
    clientContext = context;
    await createDio(url: url).then((value) {
      client = value;
      result = true;
    });
    return result;
  }

  Future<Dio> createDio({
    required String url,
  }) async {
    final dio = Dio(
      BaseOptions(
        baseUrl: url,
        receiveTimeout: const Duration(milliseconds: 15000), // 15 seconds
        connectTimeout: const Duration(milliseconds: 15000),
        sendTimeout: const Duration(milliseconds: 15000),
      ),
    );
    dio.interceptors.addAll({
      AppInterceptors(
        dio: dio,
        url: url,
        context: clientContext,
      ),
    });
    return dio;
  }

  void onListener(DioError err, ErrorInterceptorHandler errorHandler) {
    error = err;
    handler = errorHandler;
    dioErrorStream.add(err);
    dioErrorHandlerStream.add(handler);
  }

  final StreamController<DioError?> dioErrorStream =
  StreamController<DioError?>.broadcast();

  final StreamController<ErrorInterceptorHandler?> dioErrorHandlerStream =
  StreamController<ErrorInterceptorHandler?>.broadcast();

}

class AppInterceptors extends Interceptor {
  final Dio dio;
  final String url;
  final BuildContext context;

  AppInterceptors({
    required this.dio,
    required this.url,
    required this.context,
  });





  @override
  void onResponse(
      response,
      ResponseInterceptorHandler handler,
      ) {
    return handler.next(response);
  }
}

class DioClientListener extends StatelessWidget {
  const DioClientListener({
    Key? key,
    this.child,
    this.onFunction,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback? onFunction;

  @override
  Widget build(BuildContext context) {
    return child ?? const SizedBox();
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Неверный запрос';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Произошла неизвестная ошибка, повторите попытку позже.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Произошел конфликт';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Пользователь не найден';
  }
}

class NotFoundException extends DioError {
  NotFoundException({required String message, required super.requestOptions});

  @override
  String toString() {
    return message ?? '';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Интернет-соединение не обнаружено, попробуйте еще раз.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Время ожидания соединения истекло, попробуйте еще раз.';
  }
}
