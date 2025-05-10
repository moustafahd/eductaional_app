import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/features/auth/register/data/models/register_response.dart';

part 'register_state.freezed.dart';


@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.success(RegisterResponse data) = Success;
  const factory RegisterState.failure({required String error}) = Failure;
}
