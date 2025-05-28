import 'package:dio/dio.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_request_body.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_response.dart';



class CreateLevelRepo {
  final ApiService _apiService;

  CreateLevelRepo(this._apiService);

  Future<ApiResult<CreateLevelResponse>> createLevel(CreateLevelRequestBody createLevelRequestBody) async {
    try {
      final response = await _apiService.createLevel(createLevelRequestBody);
      return ApiResult.success(response);
    }on DioException catch (e) {
    return ApiResult.failure(ErrorHandler.handle(e));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}