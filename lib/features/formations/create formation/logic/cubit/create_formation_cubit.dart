import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_request_body.dart';
import 'package:untitled2/features/formations/create%20formation/data/repos/create_formation_repo.dart';
import 'package:untitled2/features/formations/create%20formation/logic/cubit/create_formation_state.dart';



class CreateFormationCubit extends Cubit<CreateFormationState> {
  final CreateFormationRepo _createFormationRepo;
  CreateFormationCubit(this._createFormationRepo) : super(CreateFormationState.createFormationInitial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController titleController = TextEditingController();
  late TextEditingController descriptionController = TextEditingController();
  late TextEditingController categoryController = TextEditingController();
  late TextEditingController instractorIdController = TextEditingController();

  
  void emitCreateFormationStates() async {
    emit(CreateFormationState.createFormationLoading());
    final result = await _createFormationRepo.createFormation(
      CreateFormationRequestBody(
        title: titleController.text, 
        description: descriptionController.text, 
        category: categoryController.text, 
        instractorId: int.parse(instractorIdController.text),
      ),
    );
    result.when(
      success: (createFormationResponse) => emit(CreateFormationState.createFormationSuccess(createFormationResponse)),
      failure: (error) => emit(CreateFormationState.createFormationFailure(error: error.apiErrorModel.message ?? '')),
    );
  }

}