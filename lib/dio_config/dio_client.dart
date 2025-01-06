import 'dart:developer';

import 'package:dio/dio.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/';

Dio getDio() {
  final dio = Dio(BaseOptions(
    baseUrl: baseUrl,
  ))
    ..interceptors.add(Logging());
  return dio;
}

class Logging extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    log('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(response, ResponseInterceptorHandler handler) async {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    return super.onError(err, handler);
  }
}
