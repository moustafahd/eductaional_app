

class ApiConstants {
  static const String userId = "17"; // 
  static const String formationId = "1"; 
  static const String levelId = "1"; 


  static const String apiBaseUrl = "http://10.0.2.2:8000/api/";

  static const String loginEndpoint = "login/";
  static const String registerEndpoint = "register/";

  static const String profileEndpoint = "profile/";

  // Formations
  static const String formationsEndpoint = "formation/formations/";

  // learn
  static const String learnEndpoint = "formation/formations/1/niveaux/1/cours/";

  // My Formations
  static const String myFormationsEndpoint = "formation/formations/by-formateur/$userId/";

  // inscription
  static const String inscriptionEndpoint = "formation/inscrits/";

  // Levels
  static const String levelsEndpoint = "formation/formations/$formationId/niveaux/";

  // Lessons
  static const String lessonsEndpoint = "formation/formations/$formationId/niveaux/$levelId/cours/";

  // Quizzes
  static const String quizzesEndpoint = "quiz/niveaux/quizzes/";

  // Add Quiz Questions
  static const String addQuizQuestionsEndpoint = "quiz/questions/";

  // feedback
  static const String feedbackEndpoint = "feedback/feedbacks/";

}


