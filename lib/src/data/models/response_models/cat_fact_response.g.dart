// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFactResponse _$$_CatFactResponseFromJson(Map<String, dynamic> json) =>
    _$_CatFactResponse(
      id: json['_id'] as String,
      user: json['user'] as String,
      text: json['text'] as String,
      type: json['type'] as String,
      isDeleted: json['deleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_CatFactResponseToJson(_$_CatFactResponse instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'text': instance.text,
      'type': instance.type,
      'deleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
