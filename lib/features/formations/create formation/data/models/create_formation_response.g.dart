// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_formation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateFormationResponse _$CreateFormationResponseFromJson(
  Map<String, dynamic> json,
) => CreateFormationResponse(
  formationId: (json['id_formation'] as num).toInt(),
  title: json['titre'] as String,
  description: json['description'] as String,
  category: json['categorie'] as String,
  instractorId: (json['formateur'] as num).toInt(),
  keywordsIdLists:
      (json['mote_cles'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
  requirmentsList:
      (json['prerequis'] as List<dynamic>?)
          ?.map(
            (e) =>
                e == null
                    ? null
                    : FormationRequirments.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$CreateFormationResponseToJson(
  CreateFormationResponse instance,
) => <String, dynamic>{
  'id_formation': instance.formationId,
  'titre': instance.title,
  'description': instance.description,
  'categorie': instance.category,
  'formateur': instance.instractorId,
  'mote_cles': instance.keywordsIdLists,
  'prerequis': instance.requirmentsList,
};

FormationRequirments _$FormationRequirmentsFromJson(
  Map<String, dynamic> json,
) => FormationRequirments(
  json['description'] as String?,
  (json['ordre'] as num?)?.toInt(),
  (json['id_requirements'] as num?)?.toInt(),
);

Map<String, dynamic> _$FormationRequirmentsToJson(
  FormationRequirments instance,
) => <String, dynamic>{
  'id_requirements': instance.requirmentId,
  'description': instance.requirmentDescription,
  'ordre': instance.requirmentOrdre,
};
