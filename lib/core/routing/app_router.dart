import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:untitled2/features/auth/login/ui/forgot_password.dart';
import 'package:untitled2/features/auth/login/ui/login_screen.dart';
import 'package:untitled2/features/auth/login/ui/widgets/terms_and_conditions_screen.dart';
import 'package:untitled2/features/home/homepage.dart';
import 'package:untitled2/features/home/video_lesson.dart';
import 'package:untitled2/features/onboarding/onboarding_screen.dart';
import 'package:untitled2/features/profile/presentation/profile.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child:  const LoginScreen(),
              ),
        );
      case Routes.termsConditions:
        return MaterialPageRoute(builder: (_) => const TermsConditionsPage());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case Routes.videoLesson:
        return MaterialPageRoute(builder: (_) => const VideoLesson());
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const Profile());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
