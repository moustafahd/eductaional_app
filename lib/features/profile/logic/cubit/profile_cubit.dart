import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/profile/data/repo/profile_repo.dart';
import 'package:untitled2/features/profile/logic/cubit/profile_state.dart';


class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;
  ProfileCubit(this._profileRepo) : super(ProfileState.initial());

  void getProfileData() async{
    emit(ProfileState.profileLoading());
    final result = await _profileRepo.getProfileData();
    result.when(
      success: (profileResponse) {
        emit(ProfileState.profileSuccess(profileResponse));
      },
      failure: (errorHandler) {
        emit(ProfileState.profileError(errorHandler));
      },
    );

  }
    
}
