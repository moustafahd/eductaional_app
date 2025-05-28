// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_lesson_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLessonRequestBody _$CreateLessonRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateLessonRequestBody(
  title: json['Titre'] as String,
  description: json['Description'] as String,
  duration: (json['Duree'] as num).toInt(),
  lessonType: json['Type'] as String,
  lessonUrl: json['url'] as String,
  order: (json['ordre'] as num).toInt(),
);

Map<String, dynamic> _$CreateLessonRequestBodyToJson(
  CreateLessonRequestBody instance,
) => <String, dynamic>{
  'Titre': instance.title,
  'Description': instance.description,
  'Duree': instance.duration,
  'Type': instance.lessonType,
  'url': instance.lessonUrl,
  'ordre': instance.order,
};
