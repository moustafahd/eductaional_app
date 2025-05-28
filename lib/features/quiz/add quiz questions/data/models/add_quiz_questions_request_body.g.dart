// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_quiz_questions_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddQuizQuestionsRequestBody _$AddQuizQuestionsRequestBodyFromJson(
  Map<String, dynamic> json,
) => AddQuizQuestionsRequestBody(
  levelId: (json['niveau_id'] as num).toInt(),
  quizId: (json['quiz_id'] as num).toInt(),
  content: json['contenu'] as String,
  order: (json['ordre'] as num).toInt(),
  choices:
      (json['choix'] as List<dynamic>)
          .map((e) => QuizChoicesRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$AddQuizQuestionsRequestBodyToJson(
  AddQuizQuestionsRequestBody instance,
) => <String, dynamic>{
  'niveau_id': instance.levelId,
  'quiz_id': instance.quizId,
  'contenu': instance.content,
  'ordre': instance.order,
  'choix': instance.choices,
};

QuizChoicesRequest _$QuizChoicesRequestFromJson(Map<String, dynamic> json) =>
    QuizChoicesRequest(
      content: json['contenu'] as String,
      isCorrect: json['est_correct'] as bool,
    );

Map<String, dynamic> _$QuizChoicesRequestToJson(QuizChoicesRequest instance) =>
    <String, dynamic>{
      'contenu': instance.content,
      'est_correct': instance.isCorrect,
    };
