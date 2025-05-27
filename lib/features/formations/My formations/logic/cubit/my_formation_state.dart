import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';

part 'my_formation_state.freezed.dart';

@freezed
class MyFormationState with _$MyFormationState {
  const factory MyFormationState.initial() = _Initial;
  const factory MyFormationState.myFormationLoading() = MyFormationLoading;
  const factory MyFormationState.myFormationSuccess(List<CreateFormationResponse> myFormationsResponse) = MyFormationSuccess;
  const factory MyFormationState.myFormationError(ErrorHandler errorHandler) = MyFormationError;
}



