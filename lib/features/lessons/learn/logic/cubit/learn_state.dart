import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_response.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_response.dart';

part 'learn_state.freezed.dart';

@freezed
class LearnState with _$LearnState {
  const factory LearnState.initial() = _Initial;
  const factory LearnState.learnLoading() = LearnLoading;
  const factory LearnState.learnSuccess(List<CreateLessonResponse> learnsResponse) = LearnSuccess;
  const factory LearnState.learnError(ErrorHandler errorHandler) = LearnError;
}
