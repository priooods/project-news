import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Connection {
  Dio init() {
    var dio = Dio();
    dio.options.baseUrl = 'https://berita-indo-api.vercel.app/v1/';
    dio.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
      ),
      InterceptorsWrapper(
        onError: (DioException error, ErrorInterceptorHandler handler) {
          EasyLoading.dismiss();
          handler.reject(error);
        },
      ),
    ]);
    return dio;
  }
}
