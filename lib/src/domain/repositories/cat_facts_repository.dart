import 'package:test_cats/src/domain/entities/cat_fact.dart';

abstract class CatFactsRepository {
  Future<CatFact> getRandomCatFact();

  Future<List<CatFact>> getCatFactsList();
}
