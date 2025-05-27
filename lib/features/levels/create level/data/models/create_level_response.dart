import 'package:json_annotation/json_annotation.dart';

part 'create_level_response.g.dart';

@JsonSerializable()
class CreateLevelResponse {
  @JsonKey(name: 'id_niveau')
  final int levelId;
  final String description;
  final int ordre;
  @JsonKey(name: 'formation')
  final int formationId;
  

  CreateLevelResponse({
    required this.levelId,
    required this.ordre,
    required this.description,
    required this.formationId,
  });
  factory CreateLevelResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLevelResponseFromJson(json);

}