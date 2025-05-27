
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';

part 'my_formations_response.g.dart';

@JsonSerializable()
class MyFormationsResponse {
  List<CreateFormationResponse> listFormations;

  MyFormationsResponse(this.listFormations);

  factory MyFormationsResponse.fromJson(List<dynamic> jsonList) {
    return MyFormationsResponse(
      jsonList.map((e) => CreateFormationResponse.fromJson(e)).toList(),
    );
  }
}
