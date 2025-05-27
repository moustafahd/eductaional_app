// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      refreshToken: json['refresh'] as String?,
      accessToken: json['access'] as String?,
      email: json['email'] as String?,
      type: json['type'] as String?,
      userId: (json['id_utilisateur'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'refresh': instance.refreshToken,
      'access': instance.accessToken,
      'email': instance.email,
      'type': instance.type,
      'id_utilisateur': instance.userId,
    };
