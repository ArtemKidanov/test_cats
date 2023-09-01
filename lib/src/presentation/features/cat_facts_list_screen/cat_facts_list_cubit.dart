import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cats/src/domain/entities/cat_fact.dart';
import 'package:test_cats/src/domain/entities/exceptions.dart';
import 'package:test_cats/src/domain/interactors/get_cat_facts_list_interactor.dart';

part 'cat_facts_list_cubit.freezed.dart';
part 'cat_facts_list_state.dart';

@injectable
class CatFactsListCubit extends Cubit<CatFactsListState> {
  CatFactsListCubit(
    this._getCatFactsListInteractor,
  ) : super(
          const CatFactsListState(
            catFactsList: [],
            isLoading: false,
            errorMessage: '',
          ),
        );

  final GetCatFactsListInteractor _getCatFactsListInteractor;

  Future<void> onCreated() async {
    try {
      emit(state.copyWith(isLoading: true));

      final catFactsList = await _getCatFactsListInteractor();

      emit(
        state.copyWith(
          catFactsList: catFactsList,
          isLoading: false,
          errorMessage: '',
        ),
      );
    } on BaseException catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: e.message,
        ),
      );
    }
  }
}
