// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_formations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyFormationsResponse _$MyFormationsResponseFromJson(
  Map<String, dynamic> json,
) => MyFormationsResponse(
  (json['listFormations'] as List<dynamic>)
      .map((e) => CreateFormationResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MyFormationsResponseToJson(
  MyFormationsResponse instance,
) => <String, dynamic>{'listFormations': instance.listFormations};
