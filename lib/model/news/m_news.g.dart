// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      title: json['title'] as String?,
      link: json['link'] as String?,
      image: json['image'] == null
          ? null
          : NewsImage.fromJson(json['image'] as Map<String, dynamic>),
      contentSnippet: json['contentSnippet'] as String?,
      isoDate: json['isoDate'] == null
          ? null
          : DateTime.parse(json['isoDate'] as String),
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'image': instance.image,
      'contentSnippet': instance.contentSnippet,
      'isoDate': instance.isoDate?.toIso8601String(),
    };
