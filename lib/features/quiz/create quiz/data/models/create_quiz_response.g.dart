// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_quiz_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateQuizResponse _$CreateQuizResponseFromJson(Map<String, dynamic> json) =>
    CreateQuizResponse(
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String,
      data: QuizModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateQuizResponseToJson(CreateQuizResponse instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) => QuizModel(
  json['questions'] as List<dynamic>,
  quizId: (json['ID_Quiz'] as num).toInt(),
  creationDate: json['date_creation'] as String,
  levelId: (json['niveau'] as num).toInt(),
);

Map<String, dynamic> _$QuizModelToJson(QuizModel instance) => <String, dynamic>{
  'ID_Quiz': instance.quizId,
  'date_creation': instance.creationDate,
  'niveau': instance.levelId,
  'questions': instance.questions,
};
