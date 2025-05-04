import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:untitled2/core/routing/app_router.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/generated/l10n.dart';
import 'package:untitled2/features/home/homepage.dart';

class EducationalApp extends StatelessWidget {

  final AppRouter appRouter;
  const EducationalApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.home,
        locale: const Locale('en'),
        localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
        title: 'Educational App',
        theme: ThemeData(
          primaryColorLight: ColorManager.mainBlue,
          scaffoldBackgroundColor: ColorManager.white,
        ),
        home: const MyHomePage(),
      ),
    );
      
  }
}

bool isArabic(){
  return Intl.getCurrentLocale() == 'ar';

}