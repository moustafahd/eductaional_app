import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_request_body.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/repos/create_lesson_repo.dart';
import 'package:untitled2/features/lessons/create%20lesson/logic/cubit/create_lesson_state.dart';

class CreateLessonCubit extends Cubit<CreateLessonState> {
  final CreateLessonRepo _createLessonRepo;
  CreateLessonCubit(this._createLessonRepo) : super(CreateLessonState.createLessonInitial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController titleController = TextEditingController();
  late TextEditingController descriptionController = TextEditingController();
  late TextEditingController durationController = TextEditingController();
  late TextEditingController lessonTypeController = TextEditingController();
  late TextEditingController lessonUrlController = TextEditingController();
  late TextEditingController orderController = TextEditingController();


  
  void emitCreateLessonStates() async {
    emit(CreateLessonState.createLessonLoading());
    final result = await _createLessonRepo.createLesson(
      CreateLessonRequestBody(
        title: titleController.text, 
        description: descriptionController.text, 
        duration: int.parse(durationController.text),
        lessonType: lessonTypeController.text,
        lessonUrl: lessonUrlController.text,
        order: int.parse(orderController.text),
        
      ),
    );
    result.when(
      success: (createLessonResponse) => emit(CreateLessonState.createLessonSuccess(createLessonResponse)),
      failure: (error) => emit(CreateLessonState.createLessonFailure(error: error.apiErrorModel.message ?? '')),
    );
  }

}