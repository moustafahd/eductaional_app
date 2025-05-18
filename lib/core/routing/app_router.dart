import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/features/Navigation/logic/cubit/navigation_cubit.dart';
import 'package:untitled2/features/Navigation/ui/navigation.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:untitled2/features/auth/login/ui/forgot_password.dart';
import 'package:untitled2/features/auth/login/ui/login_screen.dart';
import 'package:untitled2/features/auth/login/ui/widgets/terms_and_conditions_screen.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_cubit.dart';
import 'package:untitled2/features/auth/register/ui/fill_profile.dart';
import 'package:untitled2/features/auth/register/ui/register_screen.dart';
import 'package:untitled2/features/home/homepage.dart';
import 'package:untitled2/features/home/video_lesson.dart';
import 'package:untitled2/features/onboarding/onboarding_screen.dart';
import 'package:untitled2/features/profile/logic/cubit/profile_cubit.dart';
import 'package:untitled2/features/profile/profile.dart';
import 'package:untitled2/features/search/search_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.termsConditions:
        return MaterialPageRoute(builder: (_) => const TermsConditionsPage());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case Routes.register:
        final type = arguments is String ? arguments : 'student';
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<RegisterCubit>(),
                child: RegisterScreen(type: type),
              ),
        );
      case Routes.fillProfile:
        return MaterialPageRoute(builder: (ctx) => const FillProfile());
      case Routes.navigation:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => NavigationCubit(),
                child: const Navigation(),
              ),
        );
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case Routes.search:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.videoLesson:
        return MaterialPageRoute(builder: (_) => const VideoLesson());
      case Routes.profile:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => ProfileCubit(getIt())..getProfileData(),
                child: const Profile(),
              ),
        );
      default:
        return null;
    }
  }
}
