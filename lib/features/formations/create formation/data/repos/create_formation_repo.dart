import 'package:dio/dio.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_request_body.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';


class CreateFormationRepo {
  final ApiService _apiService;

  CreateFormationRepo(this._apiService);

  Future<ApiResult<CreateFormationResponse>> createFormation(CreateFormationRequestBody createFormationRequestBody) async {
    try {
      final response = await _apiService.createFormation(createFormationRequestBody);
      return ApiResult.success(response);
    }on DioException catch (e) {
    return ApiResult.failure(ErrorHandler.handle(e));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}