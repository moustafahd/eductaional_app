import 'package:dio/dio.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/models/add_quiz_questions_request_body.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/models/add_quiz_questions_response.dart';

class AddQuizQuestionsRepo {
  final ApiService _apiService;

  AddQuizQuestionsRepo(this._apiService);

  Future<ApiResult<AddQuizQuestionsResponse>> addQuizQuestions(AddQuizQuestionsRequestBody addQuizQuestionsRequestBody) async {
    try {
      final response = await _apiService.addQuizQuestions(addQuizQuestionsRequestBody);
      return ApiResult.success(response);
    }on DioException catch (e) {
    return ApiResult.failure(ErrorHandler.handle(e));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}