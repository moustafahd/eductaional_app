import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:untitled2/core/networking/api_constants.dart';
import 'package:untitled2/features/auth/login/data/models/login_request_body.dart';
import 'package:untitled2/features/auth/login/data/models/login_response.dart';
import 'package:untitled2/features/auth/register/data/models/register_request_body.dart';
import 'package:untitled2/features/auth/register/data/models/register_response.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_request_body.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_request_body.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_response.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_request_body.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_response.dart';
import 'package:untitled2/features/profile/data/models/profile_response.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/models/add_quiz_questions_request_body.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/models/add_quiz_questions_response.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/ui/add_quiz_questions.dart';
import 'package:untitled2/features/quiz/create%20quiz/data/models/create_quiz_request_body.dart';
import 'package:untitled2/features/quiz/create%20quiz/data/models/create_quiz_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.registerEndpoint)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @GET(ApiConstants.profileEndpoint)
  Future<ProfileResponse> getProfileData();

  // Formations
  @POST(ApiConstants.formationsEndpoint)
  Future<CreateFormationResponse> createFormation(
    @Body() CreateFormationRequestBody createFormationRequestBody,
  );

  // My Formations "Get formateur by id"
  @GET(ApiConstants.myFormationsEndpoint)
  Future<List<CreateFormationResponse>> getMyFormations();

  // Levels
  @GET(ApiConstants.levelsEndpoint)
  Future<List<CreateLevelResponse>> getMyLevels();

  // Create Level
  @POST(ApiConstants.levelsEndpoint)
  Future<CreateLevelResponse> createLevel(
    @Body() CreateLevelRequestBody createLevelRequestBody,
  );

  // Create Lesson
  @POST(ApiConstants.lessonsEndpoint)
  Future<CreateLessonResponse> createLesson(
    @Body() CreateLessonRequestBody createLessonRequestBody,
  );

  // Create Quizez
  @POST(ApiConstants.quizzesEndpoint)
  Future<CreateQuizResponse> createQuiz(
    @Body() CreateQuizRequestBody createQuizRequestBody,
  );

  // Add Quiz Questions
  @POST(ApiConstants.addQuizQuestionsEndpoint)
  Future<AddQuizQuestionsResponse> addQuizQuestions(
    @Body() AddQuizQuestionsRequestBody addQuizQuestionsRequestBody,
  );
}
