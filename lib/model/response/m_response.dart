// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_news/model/news/m_news.dart';
part 'm_response.freezed.dart';
part 'm_response.g.dart';

@freezed
class ResponseServices with _$ResponseServices {
  const factory ResponseServices(
      {int? code,
      String? messages,
      String? status,
      List<News>? data,
      int? total}) = _ResponseServices;

  factory ResponseServices.fromJson(Map<String, Object?> json) => _$ResponseServicesFromJson(json);
}
