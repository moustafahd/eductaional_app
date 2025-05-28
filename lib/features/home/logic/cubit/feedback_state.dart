import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/features/home/data/models/feedback_response.dart';

part 'feedback_state.freezed.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState.initial() = _Initial;
  const factory FeedbackState.feedbackLoading() = FeedbackLoading;
  const factory FeedbackState.feedbackSuccess(List<FeedBackResponse> feedbacksResponse) = FeedbackSuccess;
  const factory FeedbackState.feedbackError(ErrorHandler errorHandler) = FeedbackError;
}