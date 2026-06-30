import 'package:dio/dio.dart';
import 'package:evara_app/core/api/api_constants.dart';
import 'package:evara_app/core/api/auth_interceptor.dart';

class DioClient {
  DioClient._();

  static final Dio instance = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      headers: {
        "Content-Type": "application/json",
      },
    ),
  )..interceptors.add(AuthInterceptor());
}