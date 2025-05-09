import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

// @JsonSerializable()
// class ApiErrorModel {
//   final String? detail;  // Holds the error message (from the API response)
//   final int? code;       // Holds the HTTP status code (e.g., 401, 404, etc.)

//   // Constructor to initialize error model with detail and code
//   ApiErrorModel({this.detail, this.code});

//   // Factory method to create an instance from JSON data (optional: if you ever decide to return a JSON response)
//   factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
//       _$ApiErrorModelFromJson(json);

//   // Converts the ApiErrorModel instance into a JSON object (useful if needed for sending responses or logging)
//   Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
// }
@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;

  ApiErrorModel({
    required this.message,
    this.code,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
