import 'package:injectable/injectable.dart';
import 'package:test_cats/src/domain/entities/cat_fact.dart';
import 'package:test_cats/src/domain/interactors/base/no_param_interactor.dart';
import 'package:test_cats/src/domain/repositories/cat_facts_repository.dart';

@injectable
class GetCatFactsListInteractor implements NoParamInteractor<List<CatFact>> {
  const GetCatFactsListInteractor(this._catFactsRepository);

  final CatFactsRepository _catFactsRepository;

  @override
  Future<List<CatFact>> call() {
    return _catFactsRepository.getCatFactsList();
  }
}
