import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/search/data/repo/search_repo.dart';
import 'package:untitled2/features/search/logic/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;
  SearchCubit(this._searchRepo) : super(SearchState.initial());


  void getAllFormations() async {
    emit(SearchState.allFormationLoading());
    final result = await _searchRepo.getAllFormations();
    result.when(
      success: (getAllFormationsResponse) {
        emit(SearchState.allFormationSuccess(getAllFormationsResponse));
      },
      failure: (errorHandler) {
        emit(SearchState.allFormationError(errorHandler));
      },
    );
  }
}