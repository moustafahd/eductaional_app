import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/features/payment/data/models/inscription_response.dart';

part 'inscription_state.freezed.dart';


@freezed
class InscriptionState with _$InscriptionState {
  const factory InscriptionState.inscriptionInitial() = _InscriptionInitial;
  const factory InscriptionState.inscriptionLoading() = InscriptionLoading;
  const factory InscriptionState.inscriptionSuccess(InscriptionResponse data) = InscriptionSuccess;
  const factory InscriptionState.inscriptionFailure({required String error}) = InscriptionFailure;
}