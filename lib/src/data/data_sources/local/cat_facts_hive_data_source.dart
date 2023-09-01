import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cats/src/domain/entities/cat_fact.dart';

const catFactsBoxName = 'cat_facts';

@lazySingleton
class CatFactsHiveDataSource {
  const CatFactsHiveDataSource(this._catFactsBox);

  final Box<CatFact> _catFactsBox;

  @FactoryMethod(preResolve: true)
  static Future<CatFactsHiveDataSource> create() async {
    Hive.registerAdapter(CatFactAdapter());
    final catFactsBox = await Hive.openBox<CatFact>(catFactsBoxName);

    return CatFactsHiveDataSource(catFactsBox);
  }

  Future<void> saveCatFact(CatFact catFact) async {
    await _catFactsBox.add(catFact);
  }

  List<CatFact> getCatFacts() {
    return _catFactsBox.values.toList();
  }
}
