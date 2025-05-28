import 'package:json_annotation/json_annotation.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/models/add_quiz_questions_request_body.dart';

part 'add_quiz_questions_response.g.dart';

@JsonSerializable()
class AddQuizQuestionsResponse {
  @JsonKey(name: 'status_code')
  final int statusCode;
  final String message;
  final QuestionQuizModel data;
  

  AddQuizQuestionsResponse({
    required this.statusCode,
    required this.message,
    required this.data,
  });
  factory AddQuizQuestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AddQuizQuestionsResponseFromJson(json);

}


@JsonSerializable()
class QuestionQuizModel {
  @JsonKey(name: 'ID_QuestionQuiz')
  final int questionQuizId;
  @JsonKey(name: 'contenu')
  final String content;
  @JsonKey(name: 'ordre')
  final int order;
  @JsonKey(name: 'choix')
  final List<QuizChoicesResponse> choices;

  QuestionQuizModel({
    required this.questionQuizId,
    required this.content,
    required this.order,
    required this.choices,
  });

  factory QuestionQuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionQuizModelFromJson(json);
}

@JsonSerializable()
class QuizChoicesResponse {
  @JsonKey(name: 'contenu')
  final String content;
  @JsonKey(name: 'est_correct')
  final bool isCorrect;
  @JsonKey(name: 'ID_Choix_Quiz')
  final int? choiceQuizId;

  QuizChoicesResponse(this.choiceQuizId, {required this.content, required this.isCorrect});

  factory QuizChoicesResponse.fromJson(Map<String, dynamic> json) => _$QuizChoicesResponseFromJson(json);
}