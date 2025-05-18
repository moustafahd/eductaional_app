import 'package:dio/dio.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/profile/data/models/profile_response.dart';

class ProfileRepo {
  final ApiService _apiService;

  ProfileRepo(this._apiService);

  Future<ApiResult<ProfileResponse>> getProfileData() async {
    try {
      final response = await _apiService.getProfileData();
      return ApiResult.success(response);
    
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
