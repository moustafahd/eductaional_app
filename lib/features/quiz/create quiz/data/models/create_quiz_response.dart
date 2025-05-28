import 'package:json_annotation/json_annotation.dart';

part 'create_quiz_response.g.dart';

@JsonSerializable()
class CreateQuizResponse {
  @JsonKey(name: 'status_code')
  final int statusCode;
  final String message;
  final QuizModel data;

  CreateQuizResponse({
    required this.statusCode,
    required this.message,
    required this.data,
  });
  factory CreateQuizResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateQuizResponseFromJson(json);

}

@JsonSerializable()
class QuizModel {
  @JsonKey(name: 'ID_Quiz')
  final int quizId;
  @JsonKey(name: 'date_creation')
  final String creationDate;
  @JsonKey(name: 'niveau')
  final int levelId;
  final List<dynamic> questions;

  QuizModel(this.questions, 
    {
    required this.quizId,
    required this.creationDate,
    required this.levelId,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
  
  
}