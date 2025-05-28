import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/lessons/learn/data/repos/learn_repo.dart';
import 'package:untitled2/features/lessons/learn/logic/cubit/learn_state.dart';

class LearnCubit extends Cubit<LearnState> {
  final LearnRepo _learnRepo;
  LearnCubit(this._learnRepo) : super(LearnState.initial());


  void getLearns() async {
    emit(LearnState.learnLoading());
    final result = await _learnRepo.learn();
    result.when(
      success: (learnsResponse) {
        emit(LearnState.learnSuccess(learnsResponse));
      },
      failure: (errorHandler) {
        emit(LearnState.learnError(errorHandler));
      },
    );
  }
}

