
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/models/add_quiz_questions_request_body.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/data/repo/add_quiz_questions_repo.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/logic/cubit/add_quiz_questions_state.dart';

class AddQuizQuestionsCubit extends Cubit<AddQuizQuestionsState> {
  final AddQuizQuestionsRepo _addQuizQuestionsRepo;
  AddQuizQuestionsCubit(this._addQuizQuestionsRepo) : super(AddQuizQuestionsState.addQuizQuestionsInitial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController contentController = TextEditingController();
  late TextEditingController orderController = TextEditingController();
  late List<TextEditingController> choicesControllers = List.generate(
    3,
    (index) => TextEditingController(),
    growable: true,
  );
  late List<bool> isCorrectChoices = List.generate(3, (index) => false, growable: true);
  


  
  void emitAddQuizQuestionsStates() async {
    emit(AddQuizQuestionsState.addQuizQuestionsLoading());
    final result = await _addQuizQuestionsRepo.addQuizQuestions(
      AddQuizQuestionsRequestBody(
        levelId: 1,
        quizId: 1,
        content: contentController.text,
        order: int.parse(orderController.text),
        choices: List.generate(
        choicesControllers.length,
        (index) => QuizChoicesRequest(
          content: choicesControllers[index].text,
          isCorrect: isCorrectChoices[index],
        ),
      ),
        
        
      ),
    );
    result.when(
      success: (addQuizQuestionsResponse) => emit(AddQuizQuestionsState.addQuizQuestionsSuccess(addQuizQuestionsResponse)),
      failure: (error) => emit(AddQuizQuestionsState.addQuizQuestionsFailure(error: error.apiErrorModel.message ?? '')),
    );
  }

}