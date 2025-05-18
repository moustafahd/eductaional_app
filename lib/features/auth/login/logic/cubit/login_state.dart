import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/features/auth/login/data/models/login_response.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(LoginResponse loginResponse) = Success;
  const factory LoginState.failure({required String error}) = Failure;
}
