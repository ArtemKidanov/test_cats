import 'dart:math';

import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cats/src/data/data_sources/local/cat_facts_hive_data_source.dart';
import 'package:test_cats/src/data/data_sources/remote/cat_facts_api_client.dart';
import 'package:test_cats/src/data/mappers/cat_fact_model_response_to_entity_mapper.dart';
import 'package:test_cats/src/data/utils/url_config.dart';
import 'package:test_cats/src/domain/entities/cat_fact.dart';
import 'package:test_cats/src/domain/entities/exceptions.dart';
import 'package:test_cats/src/domain/repositories/cat_facts_repository.dart';

@Injectable(as: CatFactsRepository)
class CatFactsRepositoryImpl implements CatFactsRepository {
  const CatFactsRepositoryImpl(
    this._catFactsApiClient,
    this._catFactsHiveDataSource,
    this._catFactModelResponseToEntityMapper,
  );

  final CatFactsApiClient _catFactsApiClient;
  final CatFactsHiveDataSource _catFactsHiveDataSource;
  final CatFactModelResponseToEntityMapper _catFactModelResponseToEntityMapper;

  @override
  Future<CatFact> getRandomCatFact() async {
    try {
      Uint8List imageBytes =
          (await NetworkAssetBundle(Uri.parse(UrlConfig.catImagesUrl))
                  .load(UrlConfig.catImagesUrl))
              .buffer
              .asUint8List();

      final catFactResponse = await _catFactsApiClient.getRandomCatFact();
      final catFact = _catFactModelResponseToEntityMapper(
        catFactResponse,
        imageBytes,
      );

      _catFactsHiveDataSource.saveCatFact(catFact);

      return catFact;
    } on Exception catch (e) {
      final catFactsList = await getCatFactsList();

      if (catFactsList.isEmpty) {
        throw NoElementsLocallySavedException();
      }

      final catFact = catFactsList[Random().nextInt(catFactsList.length)];

      return catFact;
    }
  }

  @override
  Future<List<CatFact>> getCatFactsList() async {
    try {
      return _catFactsHiveDataSource.getCatFacts();
    } on HiveError catch (e) {
      throw LocallySavedDataCorruptedException();
    }
  }
}
