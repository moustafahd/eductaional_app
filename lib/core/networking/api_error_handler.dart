import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiErrorModel = _handleError(error);
    } else {
      apiErrorModel = ApiErrorModel(message: 'Unknown error', code: 1000);  // Fallback error handling
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  // Extract the error message (message)
  String message = error.response?.data['message'] ?? 'Unknown error'; // Default if 'message' is missing

  // If no response, it's likely a network or connection error
  if (error.response == null) {
    return ApiErrorModel(message: 'Network error', code: 1000); // Network issues
  }

  // Handle based on the HTTP status code (provided by Dio)
  switch (error.response?.statusCode) {
    case 400:
      return ApiErrorModel(message: message, code: 400);  // Bad Request
    case 401:
      return ApiErrorModel(message: message, code: 401);  // Unauthorized
    case 403:
      return ApiErrorModel(message: message, code: 403);  // Forbidden
    case 404:
      return ApiErrorModel(message: message, code: 404);  // Not Found
    case 500:
      return ApiErrorModel(message: message, code: 500);  // Internal Server Error
    default:
      return ApiErrorModel(message: message, code: error.response?.statusCode ?? 9999);  // Default handler for unexpected status codes
  }
}