import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';

import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';

class MyFormationRepo {
  final ApiService _apiService;
  MyFormationRepo(this._apiService);

  
  Future<ApiResult<List<CreateFormationResponse>>> getMyFormations() async {
    try {
      final response = await _apiService.getMyFormations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}