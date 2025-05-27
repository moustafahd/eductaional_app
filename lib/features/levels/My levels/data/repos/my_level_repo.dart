import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_response.dart';


class MyLevelRepo {
  final ApiService _apiService;
  MyLevelRepo(this._apiService);

  
  Future<ApiResult<List<CreateLevelResponse>>> getMyLevels() async {
    try {
      final response = await _apiService.getMyLevels();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}