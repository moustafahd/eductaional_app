import 'package:dio/dio.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/core/networking/api_result.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/features/payment/data/models/inscription_request_body.dart';
import 'package:untitled2/features/payment/data/models/inscription_response.dart';

class InscriptionRepo {
  final ApiService _apiService;

  InscriptionRepo(this._apiService);

  Future<ApiResult<InscriptionResponse>> inscription(InscriptionRequestBody inscriptionRequestBody) async {
    try {
      final response = await _apiService.inscription(inscriptionRequestBody);
      return ApiResult.success(response);
    }on DioException catch (e) {
    return ApiResult.failure(ErrorHandler.handle(e));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}