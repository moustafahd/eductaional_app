import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/core/networking/api_error_handler.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.allFormationLoading() = AllFormationLoading;
  const factory SearchState.allFormationSuccess(List<CreateFormationResponse> allFormationsResponse) = AllFormationSuccess;
  const factory SearchState.allFormationError(ErrorHandler errorHandler) = AllFormationError;
}

