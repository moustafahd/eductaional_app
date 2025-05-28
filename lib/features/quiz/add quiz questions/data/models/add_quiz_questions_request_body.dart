
import 'package:json_annotation/json_annotation.dart';

part 'add_quiz_questions_request_body.g.dart';

@JsonSerializable()
class AddQuizQuestionsRequestBody {
  @JsonKey(name: 'niveau_id')
  final int levelId;
  @JsonKey(name: 'quiz_id')
  final int quizId;
  @JsonKey(name: 'contenu')
  final String content;
  @JsonKey(name: 'ordre')
  final int order;
  @JsonKey(name: 'choix')
  final List<QuizChoicesRequest> choices;

  AddQuizQuestionsRequestBody({required this.levelId, required this.quizId, required this.content, required this.order, required this.choices});

  
  factory AddQuizQuestionsRequestBody.fromJson(Map<String, dynamic> json) => _$AddQuizQuestionsRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$AddQuizQuestionsRequestBodyToJson(this);
}

@JsonSerializable()
class QuizChoicesRequest {
  @JsonKey(name: 'contenu')
  final String content;
  @JsonKey(name: 'est_correct')
  final bool isCorrect;
  

  QuizChoicesRequest( {required this.content, required this.isCorrect});

  Map<String, dynamic> toJson() => _$QuizChoicesRequestToJson(this);
  factory QuizChoicesRequest.fromJson(Map<String, dynamic> json) => _$QuizChoicesRequestFromJson(json);
}