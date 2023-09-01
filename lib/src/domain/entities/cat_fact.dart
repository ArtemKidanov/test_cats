import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'cat_fact.freezed.dart';
part 'cat_fact.g.dart';

@freezed
class CatFact with _$CatFact {
  @HiveType(typeId: 0)
  const factory CatFact({
    @HiveField(0) required String id,
    @HiveField(1) required String text,
    @HiveField(2) required DateTime createdAt,
    @HiveField(3) required List<int> imageBytes,
  }) = _CatFact;

  factory CatFact.initial() => CatFact(
        id: '',
        text: '',
        createdAt: DateTime.now(),
        imageBytes: <int>[],
      );
}
