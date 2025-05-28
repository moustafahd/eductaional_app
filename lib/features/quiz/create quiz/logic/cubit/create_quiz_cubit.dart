
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/quiz/create%20quiz/data/models/create_quiz_request_body.dart';
import 'package:untitled2/features/quiz/create%20quiz/data/repos/create_quiz_repo.dart';
import 'package:untitled2/features/quiz/create%20quiz/logic/cubit/create_quiz_state.dart';

class CreateQuizCubit extends Cubit<CreateQuizState> {
  final CreateQuizRepo _createQuizRepo;
  CreateQuizCubit(this._createQuizRepo) : super(CreateQuizState.createQuizInitial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController titleController = TextEditingController();
  


  
  void emitCreateQuizStates() async {
    emit(CreateQuizState.createQuizLoading());
    final result = await _createQuizRepo.createQuiz(
      CreateQuizRequestBody(
        title: titleController.text,
        levelId: 1,
        
      ),
    );
    result.when(
      success: (createQuizResponse) => emit(CreateQuizState.createQuizSuccess(createQuizResponse)),
      failure: (error) => emit(CreateQuizState.createQuizFailure(error: error.apiErrorModel.message ?? '')),
    );
  }

}