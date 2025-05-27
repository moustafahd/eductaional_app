// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_level_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLevelResponse _$CreateLevelResponseFromJson(Map<String, dynamic> json) =>
    CreateLevelResponse(
      levelId: (json['id_niveau'] as num).toInt(),
      ordre: (json['ordre'] as num).toInt(),
      description: json['description'] as String,
      formationId: (json['formation'] as num).toInt(),
    );

Map<String, dynamic> _$CreateLevelResponseToJson(
  CreateLevelResponse instance,
) => <String, dynamic>{
  'id_niveau': instance.levelId,
  'description': instance.description,
  'ordre': instance.ordre,
  'formation': instance.formationId,
};
