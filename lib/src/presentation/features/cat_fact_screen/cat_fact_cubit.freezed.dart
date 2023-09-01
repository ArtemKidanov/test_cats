// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_fact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatFactState {
  CatFact get catFact => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatFactStateCopyWith<CatFactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactStateCopyWith<$Res> {
  factory $CatFactStateCopyWith(
          CatFactState value, $Res Function(CatFactState) then) =
      _$CatFactStateCopyWithImpl<$Res, CatFactState>;
  @useResult
  $Res call({CatFact catFact, bool isLoading, String errorMessage});

  $CatFactCopyWith<$Res> get catFact;
}

/// @nodoc
class _$CatFactStateCopyWithImpl<$Res, $Val extends CatFactState>
    implements $CatFactStateCopyWith<$Res> {
  _$CatFactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catFact = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      catFact: null == catFact
          ? _value.catFact
          : catFact // ignore: cast_nullable_to_non_nullable
              as CatFact,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatFactCopyWith<$Res> get catFact {
    return $CatFactCopyWith<$Res>(_value.catFact, (value) {
      return _then(_value.copyWith(catFact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CatFactStateCopyWith<$Res>
    implements $CatFactStateCopyWith<$Res> {
  factory _$$_CatFactStateCopyWith(
          _$_CatFactState value, $Res Function(_$_CatFactState) then) =
      __$$_CatFactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CatFact catFact, bool isLoading, String errorMessage});

  @override
  $CatFactCopyWith<$Res> get catFact;
}

/// @nodoc
class __$$_CatFactStateCopyWithImpl<$Res>
    extends _$CatFactStateCopyWithImpl<$Res, _$_CatFactState>
    implements _$$_CatFactStateCopyWith<$Res> {
  __$$_CatFactStateCopyWithImpl(
      _$_CatFactState _value, $Res Function(_$_CatFactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catFact = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_CatFactState(
      catFact: null == catFact
          ? _value.catFact
          : catFact // ignore: cast_nullable_to_non_nullable
              as CatFact,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CatFactState implements _CatFactState {
  const _$_CatFactState(
      {required this.catFact,
      required this.isLoading,
      required this.errorMessage});

  @override
  final CatFact catFact;
  @override
  final bool isLoading;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CatFactState(catFact: $catFact, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFactState &&
            (identical(other.catFact, catFact) || other.catFact == catFact) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, catFact, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatFactStateCopyWith<_$_CatFactState> get copyWith =>
      __$$_CatFactStateCopyWithImpl<_$_CatFactState>(this, _$identity);
}

abstract class _CatFactState implements CatFactState {
  const factory _CatFactState(
      {required final CatFact catFact,
      required final bool isLoading,
      required final String errorMessage}) = _$_CatFactState;

  @override
  CatFact get catFact;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactStateCopyWith<_$_CatFactState> get copyWith =>
      throw _privateConstructorUsedError;
}
