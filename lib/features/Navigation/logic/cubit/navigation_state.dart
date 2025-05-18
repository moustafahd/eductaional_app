abstract class NavigationState {}

class NavigationInitial extends NavigationState {}

class NavigationTabChanged extends NavigationState {
  final int index;
  NavigationTabChanged(this.index);
}
