import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_response.dart';

part 'create_lesson_state.freezed.dart';


@freezed
class CreateLessonState with _$CreateLessonState {
  const factory CreateLessonState.createLessonInitial() = _CreateLessonInitial;
  const factory CreateLessonState.createLessonLoading() = CreateLessonLoading;
  const factory CreateLessonState.createLessonSuccess(CreateLessonResponse data) = CreateLessonSuccess;
  const factory CreateLessonState.createLessonFailure({required String error}) = CreateLessonFailure;
}