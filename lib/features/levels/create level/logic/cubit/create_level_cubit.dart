import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_request_body.dart';
import 'package:untitled2/features/levels/create%20level/data/repos/create_level_repo.dart';
import 'package:untitled2/features/levels/create%20level/logic/cubit/create_level_state.dart';



class CreateLevelCubit extends Cubit<CreateLevelState> {
  final CreateLevelRepo _createLevelRepo;
  CreateLevelCubit(this._createLevelRepo) : super(CreateLevelState.createLevelInitial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController descriptionController = TextEditingController();
  late TextEditingController ordreController = TextEditingController();
  
  void emitCreateLevelStates() async {
    emit(CreateLevelState.createLevelLoading());
    final result = await _createLevelRepo.createLevel(
      CreateLevelRequestBody(
        description: descriptionController.text, 
        ordre: int.parse(ordreController.text),
        formationId: 1,
      ),
    );
    result.when(
      success: (createLevelResponse) => emit(CreateLevelState.createLevelSuccess(createLevelResponse)),
      failure: (error) => emit(CreateLevelState.createLevelFailure(error: error.apiErrorModel.message ?? '')),
    );
  }

}