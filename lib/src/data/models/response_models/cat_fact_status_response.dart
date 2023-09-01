import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_fact_status_response.freezed.dart';
part 'cat_fact_status_response.g.dart';

@freezed
class CatFactStatusResponse with _$CatFactStatusResponse {
  const factory CatFactStatusResponse({
    @JsonKey(name: 'verified') bool? isVerified,
    required int sentCount,
  }) = _CatFactStatusResponse;

  factory CatFactStatusResponse.fromJson(Map<String, Object?> json) =>
      _$CatFactStatusResponseFromJson(json);
}
