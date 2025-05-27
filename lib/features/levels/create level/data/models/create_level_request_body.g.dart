// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_level_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLevelRequestBody _$CreateLevelRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateLevelRequestBody(
  description: json['description'] as String,
  ordre: (json['ordre'] as num).toInt(),
);

Map<String, dynamic> _$CreateLevelRequestBodyToJson(
  CreateLevelRequestBody instance,
) => <String, dynamic>{
  'description': instance.description,
  'ordre': instance.ordre,
};
