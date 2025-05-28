import 'package:dio/dio.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_request_body.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_response.dart';

class CreateLessonRepo {
  final ApiService _apiService;

  CreateLessonRepo(this._apiService);

  Future<ApiResult<CreateLessonResponse>> createLesson(CreateLessonRequestBody createLessonRequestBody) async {
    try {
      final response = await _apiService.createLesson(createLessonRequestBody);
      return ApiResult.success(response);
    }on DioException catch (e) {
    return ApiResult.failure(ErrorHandler.handle(e));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}