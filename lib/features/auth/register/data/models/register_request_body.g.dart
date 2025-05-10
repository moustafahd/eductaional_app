// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestBody _$RegisterRequestBodyFromJson(Map<String, dynamic> json) =>
    RegisterRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['Nom'] as String,
      lastName: json['Prenom'] as String,
      phoneNumber: json['Telephone'] as String,
      gender: json['Sexe'] as String,
      dateOfBirth: json['Date_naissance'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$RegisterRequestBodyToJson(
  RegisterRequestBody instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'Nom': instance.firstName,
  'Prenom': instance.lastName,
  'Telephone': instance.phoneNumber,
  'Sexe': instance.gender,
  'Date_naissance': instance.dateOfBirth,
  'type': instance.type,
};
