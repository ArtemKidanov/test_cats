import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cats/src/domain/entities/cat_fact.dart';
import 'package:test_cats/src/domain/entities/exceptions.dart';
import 'package:test_cats/src/domain/interactors/get_random_cat_fact_interactor.dart';

part 'cat_fact_cubit.freezed.dart';
part 'cat_fact_state.dart';

@injectable
class CatFactCubit extends Cubit<CatFactState> {
  CatFactCubit(
    this._getRandomCatFactInteractor,
  ) : super(
          CatFactState(
            catFact: CatFact.initial(),
            isLoading: false,
            errorMessage: '',
          ),
        );

  final GetRandomCatFactInteractor _getRandomCatFactInteractor;

  Future<void> onCreated() async {
    try {
      emit(state.copyWith(isLoading: true));

      final catFact = await _getRandomCatFactInteractor();

      emit(
        state.copyWith(
          isLoading: false,
          catFact: catFact,
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
