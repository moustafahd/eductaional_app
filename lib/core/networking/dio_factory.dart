import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:untitled2/core/helpers/constants.dart';
import 'package:untitled2/core/helpers/shared_preference.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;
 
  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      await addDioHeaders();
      addDioInterceptor();
    }
    return dio!;
  }

  static Future<void> addDioHeaders() async {
    dio!.options.headers.addAll({
      'Authorization': 'Bearer ${await SharedPreferenceHelper.getString(SharedPreferencesKeys.accessToken)}',
    });

  }

  static void addDioInterceptor() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      )
    );
  }
  
}