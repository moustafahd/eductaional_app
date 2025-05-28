
import 'package:dio/dio.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/quiz/create%20quiz/data/models/create_quiz_request_body.dart';
import 'package:untitled2/features/quiz/create%20quiz/data/models/create_quiz_response.dart';

class CreateQuizRepo {
  final ApiService _apiService;

  CreateQuizRepo(this._apiService);

  Future<ApiResult<CreateQuizResponse>> createQuiz(CreateQuizRequestBody createQuizRequestBody) async {
    try {
      final response = await _apiService.createQuiz(createQuizRequestBody);
      return ApiResult.success(response);
    }on DioException catch (e) {
    return ApiResult.failure(ErrorHandler.handle(e));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}