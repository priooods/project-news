// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseServices _$ResponseServicesFromJson(Map<String, dynamic> json) {
  return _ResponseServices.fromJson(json);
}

/// @nodoc
mixin _$ResponseServices {
  int? get code => throw _privateConstructorUsedError;
  String? get messages => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<News>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseServicesCopyWith<ResponseServices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseServicesCopyWith<$Res> {
  factory $ResponseServicesCopyWith(
          ResponseServices value, $Res Function(ResponseServices) then) =
      _$ResponseServicesCopyWithImpl<$Res, ResponseServices>;
  @useResult
  $Res call(
      {int? code,
      String? messages,
      String? status,
      List<News>? data,
      int? total});
}

/// @nodoc
class _$ResponseServicesCopyWithImpl<$Res, $Val extends ResponseServices>
    implements $ResponseServicesCopyWith<$Res> {
  _$ResponseServicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? messages = freezed,
    Object? status = freezed,
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<News>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseServicesImplCopyWith<$Res>
    implements $ResponseServicesCopyWith<$Res> {
  factory _$$ResponseServicesImplCopyWith(_$ResponseServicesImpl value,
          $Res Function(_$ResponseServicesImpl) then) =
      __$$ResponseServicesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? messages,
      String? status,
      List<News>? data,
      int? total});
}

/// @nodoc
class __$$ResponseServicesImplCopyWithImpl<$Res>
    extends _$ResponseServicesCopyWithImpl<$Res, _$ResponseServicesImpl>
    implements _$$ResponseServicesImplCopyWith<$Res> {
  __$$ResponseServicesImplCopyWithImpl(_$ResponseServicesImpl _value,
      $Res Function(_$ResponseServicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? messages = freezed,
    Object? status = freezed,
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_$ResponseServicesImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<News>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseServicesImpl implements _ResponseServices {
  const _$ResponseServicesImpl(
      {this.code,
      this.messages,
      this.status,
      final List<News>? data,
      this.total})
      : _data = data;

  factory _$ResponseServicesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseServicesImplFromJson(json);

  @override
  final int? code;
  @override
  final String? messages;
  @override
  final String? status;
  final List<News>? _data;
  @override
  List<News>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;

  @override
  String toString() {
    return 'ResponseServices(code: $code, messages: $messages, status: $status, data: $data, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseServicesImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, messages, status,
      const DeepCollectionEquality().hash(_data), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseServicesImplCopyWith<_$ResponseServicesImpl> get copyWith =>
      __$$ResponseServicesImplCopyWithImpl<_$ResponseServicesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseServicesImplToJson(
      this,
    );
  }
}

abstract class _ResponseServices implements ResponseServices {
  const factory _ResponseServices(
      {final int? code,
      final String? messages,
      final String? status,
      final List<News>? data,
      final int? total}) = _$ResponseServicesImpl;

  factory _ResponseServices.fromJson(Map<String, dynamic> json) =
      _$ResponseServicesImpl.fromJson;

  @override
  int? get code;
  @override
  String? get messages;
  @override
  String? get status;
  @override
  List<News>? get data;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$ResponseServicesImplCopyWith<_$ResponseServicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
