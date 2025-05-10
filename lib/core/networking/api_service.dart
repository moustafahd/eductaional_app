import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:untitled2/core/networking/api_constants.dart';
import 'package:untitled2/features/auth/login/data/models/login_request_body.dart';
import 'package:untitled2/features/auth/login/data/models/login_response.dart';
import 'package:untitled2/features/auth/register/data/models/register_request_body.dart';
import 'package:untitled2/features/auth/register/data/models/register_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(
    
    @Body() LoginRequestBody loginRequestBody,

  );

  @POST(ApiConstants.registerEndpoint)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

}