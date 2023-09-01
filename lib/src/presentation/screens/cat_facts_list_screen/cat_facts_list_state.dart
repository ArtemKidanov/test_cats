part of 'cat_facts_list_cubit.dart';

@freezed
class CatFactsListState with _$CatFactsListState {
  const factory CatFactsListState({
    required List<CatFact> catFactsList,
    required bool isLoading,
    required String errorMessage,
  }) = _CatFactsListState;
}
