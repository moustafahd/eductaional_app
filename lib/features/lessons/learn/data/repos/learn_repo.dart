import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_response.dart';

class LearnRepo {
  final ApiService _apiService;
  LearnRepo(this._apiService);

  
  Future<ApiResult<List<CreateLessonResponse>>> learn() async {
    try {
      final response = await _apiService.learn();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}