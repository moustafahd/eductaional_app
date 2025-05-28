// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedBackResponse _$FeedBackResponseFromJson(Map<String, dynamic> json) =>
    FeedBackResponse(
      feedbackId: (json['id_feedback'] as num).toInt(),
      content: json['contenu'] as String,
      date: json['date'] as String,
      noteOutOf5: (json['note_sur_5'] as num).toInt(),
      formateur: (json['formateur'] as num?)?.toInt(),
      studentId: (json['etudiant'] as num?)?.toInt(),
      userInfo:
          json['user_info'] == null
              ? null
              : UserInfo.fromJson(json['user_info'] as Map<String, dynamic>),
      managerResponse: json['gerant_reponse'] as String?,
      responseDate: json['date_reponse'] as String?,
    );

Map<String, dynamic> _$FeedBackResponseToJson(FeedBackResponse instance) =>
    <String, dynamic>{
      'id_feedback': instance.feedbackId,
      'contenu': instance.content,
      'date': instance.date,
      'note_sur_5': instance.noteOutOf5,
      'formateur': instance.formateur,
      'etudiant': instance.studentId,
      'user_info': instance.userInfo,
      'gerant_reponse': instance.managerResponse,
      'date_reponse': instance.responseDate,
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
  type: json['type'] as String,
  id: (json['id'] as num).toInt(),
  nom: json['nom'] as String,
  prenom: json['prenom'] as String,
);

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'nom': instance.nom,
  'prenom': instance.prenom,
};
