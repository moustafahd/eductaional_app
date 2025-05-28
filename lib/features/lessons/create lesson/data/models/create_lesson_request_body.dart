import 'package:json_annotation/json_annotation.dart';

part 'create_lesson_request_body.g.dart';

@JsonSerializable()
class CreateLessonRequestBody {
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

  CreateLessonRequestBody({
    required this.title,
    required this.description,
    required this.duration,
    required this.lessonType,
    required this.lessonUrl,
    required this.order,
  });

  Map<String, dynamic> toJson() => _$CreateLessonRequestBodyToJson(this);
}