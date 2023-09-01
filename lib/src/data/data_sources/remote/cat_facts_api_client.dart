import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_cats/src/data/models/response_models/cat_fact_response.dart';
import 'package:test_cats/src/data/utils/url_config.dart';

part 'cat_facts_api_client.g.dart';

@lazySingleton
@RestApi(baseUrl: UrlConfig.baseCatFactsApiUrl)
abstract class CatFactsApiClient {
  factory CatFactsApiClient(Dio dio) = _CatFactsApiClient;

  @factoryMethod
  factory CatFactsApiClient.create(Dio dio) => CatFactsApiClient(dio);

  @GET(UrlConfig.randomCatApiUrlEndpoint)
  Future<CatFactResponse> getRandomCatFact();
}
