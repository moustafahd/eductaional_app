import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/models/add_quiz_questions_response.dart';

part 'add_quiz_questions_state.freezed.dart';


@freezed
class AddQuizQuestionsState with _$AddQuizQuestionsState {
  const factory AddQuizQuestionsState.addQuizQuestionsInitial() = _AddQuizQuestionsInitial;
  const factory AddQuizQuestionsState.addQuizQuestionsLoading() = AddQuizQuestionsLoading;
  const factory AddQuizQuestionsState.addQuizQuestionsSuccess(AddQuizQuestionsResponse data) = AddQuizQuestionsSuccess;
  const factory AddQuizQuestionsState.addQuizQuestionsFailure({required String error}) = AddQuizQuestionsFailure;
}