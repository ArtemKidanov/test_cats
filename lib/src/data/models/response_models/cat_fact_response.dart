import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_cats/src/data/models/response_models/cat_fact_status_response.dart';

part 'cat_fact_response.freezed.dart';
part 'cat_fact_response.g.dart';

@freezed
class CatFactResponse with _$CatFactResponse {
  const factory CatFactResponse({
    @JsonKey(name: '_id') required String id,
    required String user,
    required String text,
    required String type,
    @JsonKey(name: 'deleted') required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: 'status') required CatFactStatusResponse statusResponse,
  }) = _CatFactResponse;

  factory CatFactResponse.fromJson(Map<String, Object?> json) =>
      _$CatFactResponseFromJson(json);
}
