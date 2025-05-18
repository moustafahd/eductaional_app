import 'package:json_annotation/json_annotation.dart';
part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  @JsonKey(name: 'ID_Utilisateur')
  int? userId;
  @JsonKey(name: 'Nom')
  String? userName;
  @JsonKey(name: 'Prenom')
  String? userLastName;
  @JsonKey(name: 'Date_naissance')
  String? userBirthday;
  @JsonKey(name: 'Telephone')
  String? userPhone;
  @JsonKey(name: 'Sexe')
  String? userGender;
  String? type;

  ProfileResponse(
      {this.userId,
      this.userName,
      this.userLastName,
      this.userBirthday,
      this.userPhone,
      this.userGender,
      this.type}
  );
  
  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);


  
}