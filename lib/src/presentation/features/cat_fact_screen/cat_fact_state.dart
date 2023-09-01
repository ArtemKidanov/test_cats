part of 'cat_fact_cubit.dart';

@freezed
class CatFactState with _$CatFactState {
  const factory CatFactState({
    required CatFact catFact,
    required bool isLoading,
    required String errorMessage,
  }) = _CatFactState;
}
