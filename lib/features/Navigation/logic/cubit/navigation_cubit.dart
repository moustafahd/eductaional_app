import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/Navigation/logic/cubit/navigation_state.dart'; // where you define the states

class NavigationCubit extends Cubit<NavigationState> {
  int currentIndex = 0;

  NavigationCubit() : super(NavigationTabChanged(0));

  void changeTab(int index) {
    currentIndex = index;
    emit(NavigationTabChanged(index));
  }
}
