import 'package:injectable/injectable.dart';
import 'package:test_cats/src/domain/entities/cat_fact.dart';
import 'package:test_cats/src/domain/interactors/base/no_param_interactor.dart';
import 'package:test_cats/src/domain/repositories/cat_facts_repository.dart';

@injectable
class GetRandomCatFactInteractor implements NoParamInteractor<CatFact> {
  const GetRandomCatFactInteractor(this._catFactsRepository);

  final CatFactsRepository _catFactsRepository;

  @override
  Future<CatFact> call() {
    return _catFactsRepository.getRandomCatFact();
  }
}
