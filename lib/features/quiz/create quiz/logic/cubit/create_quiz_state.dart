import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/features/quiz/create%20quiz/data/models/create_quiz_response.dart';

part 'create_quiz_state.freezed.dart';


@freezed
class CreateQuizState with _$CreateQuizState {
  const factory CreateQuizState.createQuizInitial() = _CreateQuizInitial;
  const factory CreateQuizState.createQuizLoading() = CreateQuizLoading;
  const factory CreateQuizState.createQuizSuccess(CreateQuizResponse data) = CreateQuizSuccess;
  const factory CreateQuizState.createQuizFailure({required String error}) = CreateQuizFailure;
}