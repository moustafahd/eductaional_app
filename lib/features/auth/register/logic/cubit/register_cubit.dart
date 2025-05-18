import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/features/auth/register/data/models/register_request_body.dart';
import 'package:untitled2/features/auth/register/data/repos/register_repo.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_state.dart';


class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(RegisterState.initial());

  final formKey = GlobalKey<FormState>();
  late String type;
  late TextEditingController firstNameController = TextEditingController();
  late TextEditingController lastNameController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController dateOfBirthController = TextEditingController();
  late TextEditingController phoneNumberController = TextEditingController();
  late TextEditingController genderController = TextEditingController();


  void emitRegisterStates() async {
    emit(RegisterState.loading());
    final result = await _registerRepo.register(
      RegisterRequestBody(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
        dateOfBirth: dateOfBirthController.text,
        phoneNumber: phoneNumberController.text,
        gender: genderController.text,
        type: type,
      ),
    );
    result.when(
      success: (registerResponse) => emit(RegisterState.success(registerResponse)),
      failure: (error) => emit(RegisterState.failure(error: error.apiErrorModel.message ?? '')),
    );
  
  }
}