import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:weather/data/services/api_client.dart';
import 'package:weather/data/services/api_service.dart';



class Repository {
  late ApiService? apiService;
  final client = ApiClient();

  Repository() {
    apiService = ApiService(apiClient: client);
  }

  Future<Response> getMethod({
    required String path,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
  }) async {
    final Response response = await apiService!.getMethod(
      path: path,
      params: params,
    );
    return response;
  }

  Future<Response> getBytesMethod({
    required String path,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
  }) async {
    final Response response = await apiService!.getBytesMethod(
      path: path,
      params: params,
    );
    return response;
  }

  Future<Response> postMethod({
    required String path,
    Map<String, dynamic>? params,
    required dynamic body,
  }) async {
    final Response response = await apiService!.postMethod(
      path: path,
      params: params,
      body: body,
    );
    return response;
  }

  Future<Response> uploadFileMethod({
    required String path,
    Map<String, dynamic>? params,
    required dynamic body,
  }) async {
    final Response response = await apiService!.uploadFileMethod(
      path: path,
      params: params,
      body: body,
    );
    return response;
  }

  Future<Response> uploadImageMethod({
    required String path,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    required Uint8List file,
  }) async {
    final Response response = await apiService!.uploadImageMethod(
      path: path,
      params: params,
      file: file,
    );
    return response;
  }

  Future<Response> putMethod({
    required String path,
    Map<String, dynamic>? params,
    required Map<String, dynamic> body,
  }) async {
    final Response response = await apiService!.putMethod(
      path: path,
      params: params,
      body: body,
    );
    return response;
  }

  Future<Response> patchMethod({
    required String path,
    Map<String, dynamic>? params,
    required Map<String, dynamic> body,
  }) async {
    final Response response = await apiService!.patchMethod(
      path: path,
      params: params,
      body: body,
    );
    return response;
  }

  Future<Response> deleteMethod({
    required String path,
    Map<String, dynamic>? params,
  }) async {
    final Response response = await apiService!.deleteMethod(
      path: path,
      params: params,
    );
    return response;
  }
}
