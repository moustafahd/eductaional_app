
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/levels/My%20levels/data/repos/my_level_repo.dart';
import 'package:untitled2/features/levels/My%20levels/logic/cubit/my_levels_state.dart';

class MyLevelCubit extends Cubit<MyLevelState> {
  final MyLevelRepo _myLevelRepo;
  MyLevelCubit(this._myLevelRepo) : super(MyLevelState.initial());


  void getMyLevels() async {
    emit(MyLevelState.myLevelLoading());
    final result = await _myLevelRepo.getMyLevels();
    result.when(
      success: (myLevelsResponse) {
        emit(MyLevelState.myLevelSuccess(myLevelsResponse));
      },
      failure: (errorHandler) {
        emit(MyLevelState.myLevelError(errorHandler));
      },
    );
  }
}

