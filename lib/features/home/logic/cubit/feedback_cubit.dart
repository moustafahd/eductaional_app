import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/home/data/repos/feedback_repo.dart';
import 'package:untitled2/features/home/logic/cubit/feedback_state.dart';

class FeedbackCubit extends Cubit<FeedbackState> {
  final FeedbackRepo _feedbackRepo;
  FeedbackCubit(this._feedbackRepo) : super(FeedbackState.initial());


  void getFeedbacks() async {
    emit(FeedbackState.feedbackLoading());
    final result = await _feedbackRepo.getFeedback();
    result.when(
      success: (feedbacksResponse) {
        emit(FeedbackState.feedbackSuccess(feedbacksResponse));
      },
      failure: (errorHandler) {
        emit(FeedbackState.feedbackError(errorHandler));
      },
    );
  }
}
