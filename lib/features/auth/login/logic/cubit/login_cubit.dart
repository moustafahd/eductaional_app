import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/constants.dart';
import 'package:untitled2/core/helpers/shared_preference.dart';
import 'package:untitled2/core/networking/dio_factory.dart';
import 'package:untitled2/features/auth/login/data/models/login_request_body.dart';
import 'package:untitled2/features/auth/login/data/repos/login_repo.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController =TextEditingController();

   
  
  void emitLoginStates() async {
    emit(const LoginState.loading());
    final result = await _loginRepo.login(
      LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ),
    );
    result.when(
      success: (loginResponse) async{
        await saveAccessToken(loginResponse.accessToken ?? '');
        await saveRefreshToken(loginResponse.refreshToken ?? '');
        await saveUserId(loginResponse.userId.toString());
        emit(LoginState.success(loginResponse));
      } ,
      failure: (error) => emit(LoginState.failure(error: error.apiErrorModel.message ?? '')),
    );
  }
  
  Future<void> saveAccessToken(String accessToken) async {
     await SharedPreferenceHelper.setData(SharedPreferencesKeys.accessToken, accessToken);
     DioFactory.addDioAuth(accessToken);
  }
  
  Future<void> saveRefreshToken(String refreshToken) async {
    await SharedPreferenceHelper.setData(SharedPreferencesKeys.refreshToken, refreshToken);
  }

  Future<void> saveUserId(String userId) async {
    await SharedPreferenceHelper.setData(SharedPreferencesKeys.userId , userId);
  }


  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}

