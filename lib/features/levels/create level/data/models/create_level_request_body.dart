import 'package:json_annotation/json_annotation.dart';

part 'create_level_request_body.g.dart';

@JsonSerializable()
class CreateLevelRequestBody {
  final String description;
  final int ordre;

  CreateLevelRequestBody({
    required this.description,
    required this.ordre,
  });

  Map<String, dynamic> toJson() => _$CreateLevelRequestBodyToJson(this);
}