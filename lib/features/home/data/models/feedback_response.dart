import 'package:json_annotation/json_annotation.dart';

part 'feedback_response.g.dart';

@JsonSerializable()
class FeedBackResponse {
  @JsonKey(name: 'id_feedback')
  final int feedbackId;
  @JsonKey(name: 'contenu')
  final String content;
  final String date;
  @JsonKey(name: 'note_sur_5')
  final int noteOutOf5;
  final int? formateur;
  @JsonKey(name: 'etudiant')
  final int? studentId;
  @JsonKey(name: 'user_info')
  final UserInfo? userInfo;
  @JsonKey(name: 'gerant_reponse')
  final String? managerResponse;
  @JsonKey(name: 'date_reponse')
  final String? responseDate;
  

  FeedBackResponse({
    required this.feedbackId,
    required this.content,
    required this.date,
    required this.noteOutOf5,
    this.formateur,
    this.studentId,
    this.userInfo,
    this.managerResponse,
    this.responseDate,
  });
  factory FeedBackResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedBackResponseFromJson(json);

}

@JsonSerializable()
class UserInfo {
  final String type;
  final int id;
  final String nom;
  final String prenom;

  UserInfo({required this.type, required this.id, required this.nom, required this.prenom});
  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
  
  
}