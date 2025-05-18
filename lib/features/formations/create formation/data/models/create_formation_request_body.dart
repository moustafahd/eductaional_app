import 'package:json_annotation/json_annotation.dart';

part 'create_formation_request_body.g.dart';

@JsonSerializable()
class CreateFormationRequestBody {
  @JsonKey(name: 'titre')
  final String title;
  final String description;
  @JsonKey(name: 'categorie')
  final String category;
  @JsonKey(name: 'formateur')
  final int instractorId;

  CreateFormationRequestBody({
    required this.title,
    required this.description,
    required this.category,
    required this.instractorId
  });

  Map<String, dynamic> toJson() => _$CreateFormationRequestBodyToJson(this);
}