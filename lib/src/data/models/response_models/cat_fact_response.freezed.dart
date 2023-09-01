// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_fact_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFactResponse _$CatFactResponseFromJson(Map<String, dynamic> json) {
  return _CatFactResponse.fromJson(json);
}

/// @nodoc
mixin _$CatFactResponse {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted')
  bool get isDeleted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  CatFactStatusResponse get statusResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactResponseCopyWith<CatFactResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactResponseCopyWith<$Res> {
  factory $CatFactResponseCopyWith(
          CatFactResponse value, $Res Function(CatFactResponse) then) =
      _$CatFactResponseCopyWithImpl<$Res, CatFactResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String user,
      String text,
      String type,
      @JsonKey(name: 'deleted') bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'status') CatFactStatusResponse statusResponse});

  $CatFactStatusResponseCopyWith<$Res> get statusResponse;
}

/// @nodoc
class _$CatFactResponseCopyWithImpl<$Res, $Val extends CatFactResponse>
    implements $CatFactResponseCopyWith<$Res> {
  _$CatFactResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? text = null,
    Object? type = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? statusResponse = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusResponse: null == statusResponse
          ? _value.statusResponse
          : statusResponse // ignore: cast_nullable_to_non_nullable
              as CatFactStatusResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatFactStatusResponseCopyWith<$Res> get statusResponse {
    return $CatFactStatusResponseCopyWith<$Res>(_value.statusResponse, (value) {
      return _then(_value.copyWith(statusResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CatFactResponseCopyWith<$Res>
    implements $CatFactResponseCopyWith<$Res> {
  factory _$$_CatFactResponseCopyWith(
          _$_CatFactResponse value, $Res Function(_$_CatFactResponse) then) =
      __$$_CatFactResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String user,
      String text,
      String type,
      @JsonKey(name: 'deleted') bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'status') CatFactStatusResponse statusResponse});

  @override
  $CatFactStatusResponseCopyWith<$Res> get statusResponse;
}

/// @nodoc
class __$$_CatFactResponseCopyWithImpl<$Res>
    extends _$CatFactResponseCopyWithImpl<$Res, _$_CatFactResponse>
    implements _$$_CatFactResponseCopyWith<$Res> {
  __$$_CatFactResponseCopyWithImpl(
      _$_CatFactResponse _value, $Res Function(_$_CatFactResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? text = null,
    Object? type = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? statusResponse = null,
  }) {
    return _then(_$_CatFactResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusResponse: null == statusResponse
          ? _value.statusResponse
          : statusResponse // ignore: cast_nullable_to_non_nullable
              as CatFactStatusResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatFactResponse implements _CatFactResponse {
  const _$_CatFactResponse(
      {@JsonKey(name: '_id') required this.id,
      required this.user,
      required this.text,
      required this.type,
      @JsonKey(name: 'deleted') required this.isDeleted,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: 'status') required this.statusResponse});

  factory _$_CatFactResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CatFactResponseFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String user;
  @override
  final String text;
  @override
  final String type;
  @override
  @JsonKey(name: 'deleted')
  final bool isDeleted;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'status')
  final CatFactStatusResponse statusResponse;

  @override
  String toString() {
    return 'CatFactResponse(id: $id, user: $user, text: $text, type: $type, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, statusResponse: $statusResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFactResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.statusResponse, statusResponse) ||
                other.statusResponse == statusResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, text, type, isDeleted,
      createdAt, updatedAt, statusResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatFactResponseCopyWith<_$_CatFactResponse> get copyWith =>
      __$$_CatFactResponseCopyWithImpl<_$_CatFactResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatFactResponseToJson(
      this,
    );
  }
}

abstract class _CatFactResponse implements CatFactResponse {
  const factory _CatFactResponse(
          {@JsonKey(name: '_id') required final String id,
          required final String user,
          required final String text,
          required final String type,
          @JsonKey(name: 'deleted') required final bool isDeleted,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          @JsonKey(name: 'status')
          required final CatFactStatusResponse statusResponse}) =
      _$_CatFactResponse;

  factory _CatFactResponse.fromJson(Map<String, dynamic> json) =
      _$_CatFactResponse.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get user;
  @override
  String get text;
  @override
  String get type;
  @override
  @JsonKey(name: 'deleted')
  bool get isDeleted;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'status')
  CatFactStatusResponse get statusResponse;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactResponseCopyWith<_$_CatFactResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
