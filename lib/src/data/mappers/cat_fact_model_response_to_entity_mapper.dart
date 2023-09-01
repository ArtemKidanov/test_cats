import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:test_cats/src/data/models/response_models/cat_fact_response.dart';
import 'package:test_cats/src/domain/entities/cat_fact.dart';

@injectable
class CatFactModelResponseToEntityMapper {
  CatFact call(CatFactResponse response, Uint8List imageBytes) {
    return CatFact(
      id: response.id,
      text: response.text,
      createdAt: response.createdAt,
      imageBytes: imageBytes,
    );
  }
}
