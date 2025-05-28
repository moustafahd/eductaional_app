import 'package:json_annotation/json_annotation.dart';

part 'inscription_request_body.g.dart';

@JsonSerializable()
class InscriptionRequestBody {
  @JsonKey(name: 'etudiant')
  final int studentId;
  @JsonKey(name: 'formation')
  final int formationId;
  @JsonKey(name: 'niveau')
  final int levelId;
  @JsonKey(name: 'paye')
  final bool isPaid;

  InscriptionRequestBody({
    required this.studentId,
    required this.formationId,
    required this.levelId,
    required this.isPaid,
  });

  Map<String, dynamic> toJson() => _$InscriptionRequestBodyToJson(this);
}