// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFactStatusResponse _$$_CatFactStatusResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CatFactStatusResponse(
      isVerified: json['verified'] as bool?,
      sentCount: json['sentCount'] as int,
    );

Map<String, dynamic> _$$_CatFactStatusResponseToJson(
        _$_CatFactStatusResponse instance) =>
    <String, dynamic>{
      'verified': instance.isVerified,
      'sentCount': instance.sentCount,
    };
