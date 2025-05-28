// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_lesson_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLessonResponse _$CreateLessonResponseFromJson(
  Map<String, dynamic> json,
) => CreateLessonResponse(
  lessonId: (json['ID_Cours'] as num).toInt(),
  title: json['Titre'] as String,
  description: json['Description'] as String,
  duration: (json['Duree'] as num).toInt(),
  lessonType: json['Type'] as String,
  lessonUrl: json['url'] as String,
  order: (json['ordre'] as num).toInt(),
  level: (json['niveau'] as num).toInt(),
);

Map<String, dynamic> _$CreateLessonResponseToJson(
  CreateLessonResponse instance,
) => <String, dynamic>{
  'ID_Cours': instance.lessonId,
  'Titre': instance.title,
  'Description': instance.description,
  'Duree': instance.duration,
  'Type': instance.lessonType,
  'url': instance.lessonUrl,
  'ordre': instance.order,
  'niveau': instance.level,
};
