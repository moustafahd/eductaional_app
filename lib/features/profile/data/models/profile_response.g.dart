// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      userId: (json['ID_Utilisateur'] as num?)?.toInt(),
      userName: json['Nom'] as String?,
      userLastName: json['Prenom'] as String?,
      userBirthday: json['Date_naissance'] as String?,
      userPhone: json['Telephone'] as String?,
      userGender: json['Sexe'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'ID_Utilisateur': instance.userId,
      'Nom': instance.userName,
      'Prenom': instance.userLastName,
      'Date_naissance': instance.userBirthday,
      'Telephone': instance.userPhone,
      'Sexe': instance.userGender,
      'type': instance.type,
    };
