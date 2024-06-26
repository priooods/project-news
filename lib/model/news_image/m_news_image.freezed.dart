// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_news_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsImage _$NewsImageFromJson(Map<String, dynamic> json) {
  return _NewsImage.fromJson(json);
}

/// @nodoc
mixin _$NewsImage {
  String? get small => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsImageCopyWith<NewsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsImageCopyWith<$Res> {
  factory $NewsImageCopyWith(NewsImage value, $Res Function(NewsImage) then) =
      _$NewsImageCopyWithImpl<$Res, NewsImage>;
  @useResult
  $Res call({String? small, String? large});
}

/// @nodoc
class _$NewsImageCopyWithImpl<$Res, $Val extends NewsImage>
    implements $NewsImageCopyWith<$Res> {
  _$NewsImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsImageImplCopyWith<$Res>
    implements $NewsImageCopyWith<$Res> {
  factory _$$NewsImageImplCopyWith(
          _$NewsImageImpl value, $Res Function(_$NewsImageImpl) then) =
      __$$NewsImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? large});
}

/// @nodoc
class __$$NewsImageImplCopyWithImpl<$Res>
    extends _$NewsImageCopyWithImpl<$Res, _$NewsImageImpl>
    implements _$$NewsImageImplCopyWith<$Res> {
  __$$NewsImageImplCopyWithImpl(
      _$NewsImageImpl _value, $Res Function(_$NewsImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_$NewsImageImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImageImpl implements _NewsImage {
  const _$NewsImageImpl({this.small, this.large});

  factory _$NewsImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsImageImplFromJson(json);

  @override
  final String? small;
  @override
  final String? large;

  @override
  String toString() {
    return 'NewsImage(small: $small, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsImageImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsImageImplCopyWith<_$NewsImageImpl> get copyWith =>
      __$$NewsImageImplCopyWithImpl<_$NewsImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsImageImplToJson(
      this,
    );
  }
}

abstract class _NewsImage implements NewsImage {
  const factory _NewsImage({final String? small, final String? large}) =
      _$NewsImageImpl;

  factory _NewsImage.fromJson(Map<String, dynamic> json) =
      _$NewsImageImpl.fromJson;

  @override
  String? get small;
  @override
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$NewsImageImplCopyWith<_$NewsImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
