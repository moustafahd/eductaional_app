
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/networking/api_constants.dart';
import 'package:untitled2/features/payment/data/models/inscription_request_body.dart';
import 'package:untitled2/features/payment/data/repos/inscription_repo.dart';
import 'package:untitled2/features/payment/logic/cubit/inscription_state.dart';

class InscriptionCubit extends Cubit<InscriptionState> {
  final InscriptionRepo _inscriptionRepo;
  InscriptionCubit(this._inscriptionRepo) : super(InscriptionState.inscriptionInitial());


  
  void emitInscriptionStates() async {
    emit(InscriptionState.inscriptionLoading());
    final result = await _inscriptionRepo.inscription(
      InscriptionRequestBody(
        studentId: 17, // Replace with actual student ID
        formationId: 1, // Replace with actual formation ID
        levelId: 1, // Replace with actual level ID
        isPaid: true, // Set to true if the inscription is paid
      ),
    );
    result.when(
      success: (inscriptionResponse) => emit(InscriptionState.inscriptionSuccess(inscriptionResponse)),
      failure: (error) => emit(InscriptionState.inscriptionFailure(error: error.apiErrorModel.message ?? '')),
    );
  }

}