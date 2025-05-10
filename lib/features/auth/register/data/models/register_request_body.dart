import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String email;
  final String password;
  @JsonKey(name: 'Nom')
  final String firstName;
  @JsonKey(name: 'Prenom')
  final String lastName;
  @JsonKey(name: 'Telephone')
  final String phoneNumber;
  @JsonKey(name: 'Sexe')
  final String gender;
  @JsonKey(name: 'Date_naissance')
  final String dateOfBirth;
  final String type;

  RegisterRequestBody({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.gender,
    required this.dateOfBirth,
    required this.type,}
  );

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
