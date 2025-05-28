import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_response.dart';


part 'create_level_state.freezed.dart';


@freezed
class CreateLevelState with _$CreateLevelState {
  const factory CreateLevelState.createLevelInitial() = _CreateLevelInitial;
  const factory CreateLevelState.createLevelLoading() = CreateLevelLoading;
  const factory CreateLevelState.createLevelSuccess(CreateLevelResponse data) = CreateLevelSuccess;
  const factory CreateLevelState.createLevelFailure({required String error}) = CreateLevelFailure;
}