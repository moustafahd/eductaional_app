// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_quiz_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateQuizRequestBody _$CreateQuizRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateQuizRequestBody(
  title: json['titre'] as String,
  levelId: (json['niveau'] as num).toInt(),
);

Map<String, dynamic> _$CreateQuizRequestBodyToJson(
  CreateQuizRequestBody instance,
) => <String, dynamic>{'titre': instance.title, 'niveau': instance.levelId};
