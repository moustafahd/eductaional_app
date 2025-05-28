import 'package:json_annotation/json_annotation.dart';

part 'inscription_response.g.dart';

@JsonSerializable()
class InscriptionResponse {
  @JsonKey(name: 'id')
  final int inscriptionId;
  @JsonKey(name: 'etudiant')
  final int studentId;
  @JsonKey(name: 'niveau')
  final int levelId;
  @JsonKey(name: 'paye')
  final bool isPaid;
  @JsonKey(name: 'date_inscription')
  final String inscriptionDate;

  InscriptionResponse({required this.inscriptionId, required this.studentId, required this.levelId, required this.isPaid, required this.inscriptionDate});

  factory InscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$InscriptionResponseFromJson(json);

  

}