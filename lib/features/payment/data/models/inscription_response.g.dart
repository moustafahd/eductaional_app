// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inscription_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InscriptionResponse _$InscriptionResponseFromJson(Map<String, dynamic> json) =>
    InscriptionResponse(
      inscriptionId: (json['id'] as num).toInt(),
      studentId: (json['etudiant'] as num).toInt(),
      levelId: (json['niveau'] as num).toInt(),
      isPaid: json['paye'] as bool,
      inscriptionDate: json['date_inscription'] as String,
    );

Map<String, dynamic> _$InscriptionResponseToJson(
  InscriptionResponse instance,
) => <String, dynamic>{
  'id': instance.inscriptionId,
  'etudiant': instance.studentId,
  'niveau': instance.levelId,
  'paye': instance.isPaid,
  'date_inscription': instance.inscriptionDate,
};
