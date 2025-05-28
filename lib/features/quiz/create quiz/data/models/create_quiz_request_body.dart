
import 'package:json_annotation/json_annotation.dart';

part 'create_quiz_request_body.g.dart';

@JsonSerializable()
class CreateQuizRequestBody {
  @JsonKey(name: 'titre')
  final String title;
  @JsonKey(name: 'niveau')
  final int levelId;
  

  CreateQuizRequestBody({
    required this.title,
    required this.levelId,
  });

  Map<String, dynamic> toJson() => _$CreateQuizRequestBodyToJson(this);
}