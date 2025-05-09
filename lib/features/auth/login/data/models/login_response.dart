import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'refresh')
  String? refreshToken;
  @JsonKey(name: 'access')
  String? accessToken;
  String? email;
  String? type;

  LoginResponse({
    this.refreshToken,
    this.accessToken,
    this.email,
    this.type,
  });
  
  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);


  
}