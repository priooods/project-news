// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_news/model/news_image/m_news_image.dart';
part 'm_news.freezed.dart';
part 'm_news.g.dart';

@freezed
class News with _$News {
  const factory News({
    String? title,
    String? link,
    NewsImage? image,
    String? contentSnippet,
    DateTime? isoDate
  }) = _News;

  factory News.fromJson(Map<String, Object?> json) => _$NewsFromJson(json);
}
