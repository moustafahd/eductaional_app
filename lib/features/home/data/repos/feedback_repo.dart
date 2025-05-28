import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/home/data/models/feedback_response.dart';

class FeedbackRepo {
  final ApiService _apiService;
  FeedbackRepo(this._apiService);

  
  Future<ApiResult<List<FeedBackResponse>>> getFeedback() async {
    try {
      final response = await _apiService.getFeedbacks();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}