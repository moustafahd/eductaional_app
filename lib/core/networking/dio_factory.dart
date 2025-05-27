import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;
 
  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
    }
    return dio!;
  }

  static Future<void> addDioHeaders() async {
    dio!.options.headers.addAll({
      //'Authorization': 'Bearer ${await SharedPreferenceHelper.getString(SharedPreferencesKeys.accessToken)}',
    });

  }

  // static void removeDioAuth() {
  //   dio!.options.headers.remove('Authorization');
  // }

  static void addDioAuth(String token) {
    dio!.options.headers = {
      'Authorization': 'Bearer $token',

    };

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