// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'm_news_image.freezed.dart';
part 'm_news_image.g.dart';

@freezed
class NewsImage with _$NewsImage {
  const factory NewsImage(
      {String? small,
      String? large}) = _NewsImage;

  factory NewsImage.fromJson(Map<String, Object?> json) => _$NewsImageFromJson(json);
}
