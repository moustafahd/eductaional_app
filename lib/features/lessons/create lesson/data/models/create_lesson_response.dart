import 'package:json_annotation/json_annotation.dart';

part 'create_lesson_response.g.dart';

@JsonSerializable()
class CreateLessonResponse {
  @JsonKey(name: 'ID_Cours')
  final int lessonId;
  @JsonKey(name: 'Titre')
  final String title;
  @JsonKey(name: 'Description')
  final String description;
  @JsonKey(name: 'Duree')
  final int duration;
  @JsonKey(name: 'Type')
  final String lessonType;
  @JsonKey(name: 'url')
  final String lessonUrl;
  @JsonKey(name: 'ordre')
  final int order;
  @JsonKey(name: 'niveau')
  final int level;

  CreateLessonResponse({
    required this.lessonId,
    required this.title,
    required this.description,
    required this.duration,
    required this.lessonType,
    required this.lessonUrl,
    required this.order,
    required this.level,
  });
  factory CreateLessonResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLessonResponseFromJson(json);

}