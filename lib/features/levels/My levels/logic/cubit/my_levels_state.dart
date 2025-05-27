import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_response.dart';

part 'my_levels_state.freezed.dart';

@freezed
class MyLevelState with _$MyLevelState {
  const factory MyLevelState.initial() = _Initial;
  const factory MyLevelState.myLevelLoading() = MyLevelLoading;
  const factory MyLevelState.myLevelSuccess(List<CreateLevelResponse> myLevelsResponse) = MyLevelSuccess;
  const factory MyLevelState.myLevelError(ErrorHandler errorHandler) = MyLevelError;
}



