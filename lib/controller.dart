import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_news/services/connection.dart';

class ServiceController {
  Future newsIndex(String? type, Map<String, dynamic>? search) async {
    try {
      final response = await Connection().init().get('cnn-news${type ?? ''}', queryParameters: search);
      EasyLoading.dismiss();
      return response;
    } on SocketException catch (error) {
      throw Exception(error);
    } on FormatException catch (error) {
      throw Exception(error);
    } on DioException catch (error) {
      var resError = error.response;
      return resError;
    } catch (error) {
      throw Exception(error);
    }
  }
}
