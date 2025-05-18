// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_formation_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateFormationRequestBody _$CreateFormationRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateFormationRequestBody(
  title: json['titre'] as String,
  description: json['description'] as String,
  category: json['categorie'] as String,
  instractorId: (json['formateur'] as num).toInt(),
);

Map<String, dynamic> _$CreateFormationRequestBodyToJson(
  CreateFormationRequestBody instance,
) => <String, dynamic>{
  'titre': instance.title,
  'description': instance.description,
  'categorie': instance.category,
  'formateur': instance.instractorId,
};
