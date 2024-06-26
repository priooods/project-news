// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseServicesImpl _$$ResponseServicesImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseServicesImpl(
      code: (json['code'] as num?)?.toInt(),
      messages: json['messages'] as String?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResponseServicesImplToJson(
        _$ResponseServicesImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'messages': instance.messages,
      'status': instance.status,
      'data': instance.data,
      'total': instance.total,
    };
