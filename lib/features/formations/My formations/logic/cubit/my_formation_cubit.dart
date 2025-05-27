
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/formations/My%20formations/data/repo/my_formation_repo.dart';
import 'package:untitled2/features/formations/My%20formations/logic/cubit/my_formation_state.dart';

class MyFormationCubit extends Cubit<MyFormationState> {
  final MyFormationRepo _myFormationRepo;
  MyFormationCubit(this._myFormationRepo) : super(MyFormationState.initial());


  void getMyFormations() async {
    emit(MyFormationState.myFormationLoading());
    final result = await _myFormationRepo.getMyFormations();
    result.when(
      success: (myFormationsResponse) {
        emit(MyFormationState.myFormationSuccess(myFormationsResponse));
      },
      failure: (errorHandler) {
        emit(MyFormationState.myFormationError(errorHandler));
      },
    );
  }
}
