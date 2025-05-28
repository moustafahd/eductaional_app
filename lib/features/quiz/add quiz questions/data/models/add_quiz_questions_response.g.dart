// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_quiz_questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddQuizQuestionsResponse _$AddQuizQuestionsResponseFromJson(
  Map<String, dynamic> json,
) => AddQuizQuestionsResponse(
  statusCode: (json['status_code'] as num).toInt(),
  message: json['message'] as String,
  data: QuestionQuizModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AddQuizQuestionsResponseToJson(
  AddQuizQuestionsResponse instance,
) => <String, dynamic>{
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
};

QuestionQuizModel _$QuestionQuizModelFromJson(Map<String, dynamic> json) =>
    QuestionQuizModel(
      questionQuizId: (json['ID_QuestionQuiz'] as num).toInt(),
      content: json['contenu'] as String,
      order: (json['ordre'] as num).toInt(),
      choices:
          (json['choix'] as List<dynamic>)
              .map(
                (e) => QuizChoicesResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$QuestionQuizModelToJson(QuestionQuizModel instance) =>
    <String, dynamic>{
      'ID_QuestionQuiz': instance.questionQuizId,
      'contenu': instance.content,
      'ordre': instance.order,
      'choix': instance.choices,
    };

QuizChoicesResponse _$QuizChoicesResponseFromJson(Map<String, dynamic> json) =>
    QuizChoicesResponse(
      (json['ID_Choix_Quiz'] as num?)?.toInt(),
      content: json['contenu'] as String,
      isCorrect: json['est_correct'] as bool,
    );

Map<String, dynamic> _$QuizChoicesResponseToJson(
  QuizChoicesResponse instance,
) => <String, dynamic>{
  'contenu': instance.content,
  'est_correct': instance.isCorrect,
  'ID_Choix_Quiz': instance.choiceQuizId,
};
