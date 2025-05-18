import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';


part 'create_formation_state.freezed.dart';


@freezed
class CreateFormationState with _$CreateFormationState {
  const factory CreateFormationState.createFormationInitial() = _CreateFormationInitial;
  const factory CreateFormationState.createFormationLoading() = CreateFormationLoading;
  const factory CreateFormationState.createFormationSuccess(CreateFormationResponse data) = CreateFormationSuccess;
  const factory CreateFormationState.createFormationFailure({required String error}) = CreateFormationFailure;
}