import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/constants.dart';
import 'package:untitled2/core/helpers/shared_preference.dart';
import 'package:untitled2/core/routing/app_router.dart';
import 'package:untitled2/educational_app.dart';
import 'package:untitled2/generated/l10n.dart';


bool isLoggedInUser = false;
bool isUserStudent = false;
bool isUserTeacher = false;
bool isUserAdmin = false;
void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    ]);
  await ScreenUtil.ensureScreenSize();
  await S.load(const Locale('en'));
  await isUserLoggedIn();
  setupGetIt();
  runApp( EducationalApp(
    appRouter: AppRouter(),
  ));

}

Future<void> isUserLoggedIn() async{
  String? userToken = await SharedPreferenceHelper.getString(SharedPreferencesKeys.accessToken);
  isLoggedInUser = userToken != null && userToken.isNotEmpty;
}