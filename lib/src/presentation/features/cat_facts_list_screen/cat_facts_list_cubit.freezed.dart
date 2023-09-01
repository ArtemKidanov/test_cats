// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_facts_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatFactsListState {
  List<CatFact> get catFactsList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatFactsListStateCopyWith<CatFactsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactsListStateCopyWith<$Res> {
  factory $CatFactsListStateCopyWith(
          CatFactsListState value, $Res Function(CatFactsListState) then) =
      _$CatFactsListStateCopyWithImpl<$Res, CatFactsListState>;
  @useResult
  $Res call({List<CatFact> catFactsList, bool isLoading, String errorMessage});
}

/// @nodoc
class _$CatFactsListStateCopyWithImpl<$Res, $Val extends CatFactsListState>
    implements $CatFactsListStateCopyWith<$Res> {
  _$CatFactsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catFactsList = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      catFactsList: null == catFactsList
          ? _value.catFactsList
          : catFactsList // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
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
}

/// @nodoc
abstract class _$$_CatFactsListStateCopyWith<$Res>
    implements $CatFactsListStateCopyWith<$Res> {
  factory _$$_CatFactsListStateCopyWith(_$_CatFactsListState value,
          $Res Function(_$_CatFactsListState) then) =
      __$$_CatFactsListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CatFact> catFactsList, bool isLoading, String errorMessage});
}

/// @nodoc
class __$$_CatFactsListStateCopyWithImpl<$Res>
    extends _$CatFactsListStateCopyWithImpl<$Res, _$_CatFactsListState>
    implements _$$_CatFactsListStateCopyWith<$Res> {
  __$$_CatFactsListStateCopyWithImpl(
      _$_CatFactsListState _value, $Res Function(_$_CatFactsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catFactsList = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_CatFactsListState(
      catFactsList: null == catFactsList
          ? _value._catFactsList
          : catFactsList // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
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

class _$_CatFactsListState implements _CatFactsListState {
  const _$_CatFactsListState(
      {required final List<CatFact> catFactsList,
      required this.isLoading,
      required this.errorMessage})
      : _catFactsList = catFactsList;

  final List<CatFact> _catFactsList;
  @override
  List<CatFact> get catFactsList {
    if (_catFactsList is EqualUnmodifiableListView) return _catFactsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catFactsList);
  }

  @override
  final bool isLoading;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CatFactsListState(catFactsList: $catFactsList, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFactsListState &&
            const DeepCollectionEquality()
                .equals(other._catFactsList, _catFactsList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_catFactsList),
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatFactsListStateCopyWith<_$_CatFactsListState> get copyWith =>
      __$$_CatFactsListStateCopyWithImpl<_$_CatFactsListState>(
          this, _$identity);
}

abstract class _CatFactsListState implements CatFactsListState {
  const factory _CatFactsListState(
      {required final List<CatFact> catFactsList,
      required final bool isLoading,
      required final String errorMessage}) = _$_CatFactsListState;

  @override
  List<CatFact> get catFactsList;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactsListStateCopyWith<_$_CatFactsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
