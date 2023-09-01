// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_fact_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFactStatusResponse _$CatFactStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _CatFactStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$CatFactStatusResponse {
  @JsonKey(name: 'verified')
  bool? get isVerified => throw _privateConstructorUsedError;
  int get sentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactStatusResponseCopyWith<CatFactStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactStatusResponseCopyWith<$Res> {
  factory $CatFactStatusResponseCopyWith(CatFactStatusResponse value,
          $Res Function(CatFactStatusResponse) then) =
      _$CatFactStatusResponseCopyWithImpl<$Res, CatFactStatusResponse>;
  @useResult
  $Res call({@JsonKey(name: 'verified') bool? isVerified, int sentCount});
}

/// @nodoc
class _$CatFactStatusResponseCopyWithImpl<$Res,
        $Val extends CatFactStatusResponse>
    implements $CatFactStatusResponseCopyWith<$Res> {
  _$CatFactStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerified = freezed,
    Object? sentCount = null,
  }) {
    return _then(_value.copyWith(
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      sentCount: null == sentCount
          ? _value.sentCount
          : sentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatFactStatusResponseCopyWith<$Res>
    implements $CatFactStatusResponseCopyWith<$Res> {
  factory _$$_CatFactStatusResponseCopyWith(_$_CatFactStatusResponse value,
          $Res Function(_$_CatFactStatusResponse) then) =
      __$$_CatFactStatusResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'verified') bool? isVerified, int sentCount});
}

/// @nodoc
class __$$_CatFactStatusResponseCopyWithImpl<$Res>
    extends _$CatFactStatusResponseCopyWithImpl<$Res, _$_CatFactStatusResponse>
    implements _$$_CatFactStatusResponseCopyWith<$Res> {
  __$$_CatFactStatusResponseCopyWithImpl(_$_CatFactStatusResponse _value,
      $Res Function(_$_CatFactStatusResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerified = freezed,
    Object? sentCount = null,
  }) {
    return _then(_$_CatFactStatusResponse(
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      sentCount: null == sentCount
          ? _value.sentCount
          : sentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatFactStatusResponse implements _CatFactStatusResponse {
  const _$_CatFactStatusResponse(
      {@JsonKey(name: 'verified') this.isVerified, required this.sentCount});

  factory _$_CatFactStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CatFactStatusResponseFromJson(json);

  @override
  @JsonKey(name: 'verified')
  final bool? isVerified;
  @override
  final int sentCount;

  @override
  String toString() {
    return 'CatFactStatusResponse(isVerified: $isVerified, sentCount: $sentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFactStatusResponse &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.sentCount, sentCount) ||
                other.sentCount == sentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isVerified, sentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatFactStatusResponseCopyWith<_$_CatFactStatusResponse> get copyWith =>
      __$$_CatFactStatusResponseCopyWithImpl<_$_CatFactStatusResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatFactStatusResponseToJson(
      this,
    );
  }
}

abstract class _CatFactStatusResponse implements CatFactStatusResponse {
  const factory _CatFactStatusResponse(
      {@JsonKey(name: 'verified') final bool? isVerified,
      required final int sentCount}) = _$_CatFactStatusResponse;

  factory _CatFactStatusResponse.fromJson(Map<String, dynamic> json) =
      _$_CatFactStatusResponse.fromJson;

  @override
  @JsonKey(name: 'verified')
  bool? get isVerified;
  @override
  int get sentCount;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactStatusResponseCopyWith<_$_CatFactStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
