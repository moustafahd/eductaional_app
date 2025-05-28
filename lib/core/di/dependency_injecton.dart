import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/core/networking/dio_factory.dart';
import 'package:untitled2/features/auth/login/data/repos/login_repo.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:untitled2/features/auth/register/data/repos/register_repo.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_cubit.dart';
import 'package:untitled2/features/formations/My%20formations/data/repo/my_formation_repo.dart';
import 'package:untitled2/features/formations/My%20formations/logic/cubit/my_formation_cubit.dart';
import 'package:untitled2/features/formations/create%20formation/data/repos/create_formation_repo.dart';
import 'package:untitled2/features/formations/create%20formation/logic/cubit/create_formation_cubit.dart';
import 'package:untitled2/features/home/data/repos/feedback_repo.dart';
import 'package:untitled2/features/home/logic/cubit/feedback_cubit.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/repos/create_lesson_repo.dart';
import 'package:untitled2/features/lessons/create%20lesson/logic/cubit/create_lesson_cubit.dart';
import 'package:untitled2/features/lessons/learn/data/repos/learn_repo.dart';
import 'package:untitled2/features/lessons/learn/logic/cubit/learn_cubit.dart';
import 'package:untitled2/features/levels/My%20levels/data/repos/my_level_repo.dart';
import 'package:untitled2/features/levels/My%20levels/logic/cubit/my_levels_cubit.dart';
import 'package:untitled2/features/levels/create%20level/logic/cubit/create_level_cubit.dart';
import 'package:untitled2/features/payment/data/repos/inscription_repo.dart';
import 'package:untitled2/features/payment/logic/cubit/inscription_cubit.dart';
import 'package:untitled2/features/profile/data/repo/profile_repo.dart';
import 'package:untitled2/features/profile/logic/cubit/profile_cubit.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/repo/add_quiz_questions_repo.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/logic/cubit/add_quiz_questions_cubit.dart';
import 'package:untitled2/features/quiz/create%20quiz/data/repos/create_quiz_repo.dart';
import 'package:untitled2/features/quiz/create%20quiz/logic/cubit/create_quiz_cubit.dart';
import 'package:untitled2/features/search/data/repo/search_repo.dart';
import 'package:untitled2/features/search/logic/cubit/search_cubit.dart';

import '../../features/levels/create level/data/repos/create_level_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService 
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // Register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  // Profile
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getIt()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));

  // Create Formation
  getIt.registerLazySingleton<CreateFormationRepo>(() => CreateFormationRepo(getIt()));
  getIt.registerFactory<CreateFormationCubit>(() => CreateFormationCubit(getIt()));
  // My Formations
  getIt.registerLazySingleton<MyFormationRepo>(() => MyFormationRepo(getIt()));
  getIt.registerFactory<MyFormationCubit>(() => MyFormationCubit(getIt()));

  // Get all Formations
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo(getIt()));
  getIt.registerFactory<SearchCubit>(() => SearchCubit(getIt()));

  // My levels
  getIt.registerLazySingleton<MyLevelRepo>(() => MyLevelRepo(getIt()));
  getIt.registerFactory<MyLevelCubit>(() => MyLevelCubit(getIt()));

  // Create Level
  getIt.registerLazySingleton<CreateLevelRepo>(() => CreateLevelRepo(getIt()));
  getIt.registerFactory<CreateLevelCubit>(() => CreateLevelCubit(getIt()));

  // Create Lesson
  getIt.registerLazySingleton<CreateLessonRepo>(() => CreateLessonRepo(getIt()));
  getIt.registerFactory<CreateLessonCubit>(() => CreateLessonCubit(getIt()));

  // Create Quiz
  getIt.registerLazySingleton<CreateQuizRepo>(() => CreateQuizRepo(getIt()));
  getIt.registerFactory<CreateQuizCubit>(() => CreateQuizCubit(getIt()));

  // Add Quiz Questions
  getIt.registerLazySingleton<AddQuizQuestionsRepo>(() => AddQuizQuestionsRepo(getIt()));
  getIt.registerFactory<AddQuizQuestionsCubit>(() => AddQuizQuestionsCubit(getIt()));

  // inscription
  getIt.registerLazySingleton<InscriptionRepo>(() => InscriptionRepo(getIt()));
  getIt.registerFactory<InscriptionCubit>(() => InscriptionCubit(getIt()));

  // learn
  getIt.registerLazySingleton<LearnRepo>(() => LearnRepo(getIt()));
  getIt.registerFactory<LearnCubit>(() => LearnCubit(getIt()));

  // Feedback
  getIt.registerLazySingleton<FeedbackRepo>(() => FeedbackRepo(getIt()));
  getIt.registerFactory<FeedbackCubit>(() => FeedbackCubit(getIt()));
}