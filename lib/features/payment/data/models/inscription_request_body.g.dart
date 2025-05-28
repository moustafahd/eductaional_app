// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inscription_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InscriptionRequestBody _$InscriptionRequestBodyFromJson(
  Map<String, dynamic> json,
) => InscriptionRequestBody(
  studentId: (json['etudiant'] as num).toInt(),
  formationId: (json['formation'] as num).toInt(),
  levelId: (json['niveau'] as num).toInt(),
  isPaid: json['paye'] as bool,
);

Map<String, dynamic> _$InscriptionRequestBodyToJson(
  InscriptionRequestBody instance,
) => <String, dynamic>{
  'etudiant': instance.studentId,
  'formation': instance.formationId,
  'niveau': instance.levelId,
  'paye': instance.isPaid,
};
