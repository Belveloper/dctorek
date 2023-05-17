import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio? dio = Dio();
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://doctorek-api.mocklab.io',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    @required String? url,
    Map<String, dynamic>? parameters,
  }) async {
    return await dio!.get(url!, queryParameters: parameters);
  }

  static Future<Response> postData({
    @required String? url,
    Map<String, dynamic>? parameters,
    String? token,
    @required Map<String, dynamic>? data,
  }) async {
    return await dio!
        .post(url as String, queryParameters: parameters, data: data);
  }
}
