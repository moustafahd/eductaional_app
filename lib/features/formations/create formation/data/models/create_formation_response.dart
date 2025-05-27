import 'package:json_annotation/json_annotation.dart';

part 'create_formation_response.g.dart';

@JsonSerializable()
class CreateFormationResponse {
  @JsonKey(name: 'id_formation')
  final int formationId;
  @JsonKey(name: 'titre')
  final String title;
  final String description;
  @JsonKey(name: 'categorie')
  final String category;
  @JsonKey(name: 'formateur')
  final int instractorId;
  @JsonKey(name: 'mote_cles')
  final List<int>? keywordsIdLists;
  @JsonKey(name: 'prerequis')
  final List<FormationRequirments?>? requirmentsList;

  CreateFormationResponse({
    required this.formationId,
    required this.title,
    required this.description,
    required this.category,
    required this.instractorId,
    required this.keywordsIdLists,
    required this.requirmentsList,
  });
  factory CreateFormationResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateFormationResponseFromJson(json);

}

@JsonSerializable()
class FormationRequirments {
  @JsonKey(name: 'id_requirements')
  final int? requirmentId;
  @JsonKey(name: 'description')
  final String? requirmentDescription;
  @JsonKey(name: 'ordre')
  final int? requirmentOrdre;

  FormationRequirments(this.requirmentDescription, this.requirmentOrdre, this.requirmentId, );

  factory FormationRequirments.fromJson(Map<String, dynamic> json) =>
      _$FormationRequirmentsFromJson(json);
}