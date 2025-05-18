import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/features/profile/data/models/profile_response.dart';


part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  //profile data
  const factory ProfileState.profileLoading() = ProfileLoading;
  const factory ProfileState.profileSuccess(ProfileResponse profileResponse) = ProfileSuccess;
  const factory ProfileState.profileError( ErrorHandler errorHandler) = ProfileError;

}
