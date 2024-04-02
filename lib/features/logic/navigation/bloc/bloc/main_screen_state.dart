part of 'main_screen_bloc.dart';

sealed class MainScreenState extends Equatable {
  const MainScreenState({required this.tabIndex});

  final int tabIndex;

  @override
  List<Object> get props => [tabIndex];
}

final class MainScreenInitial extends MainScreenState {
  const MainScreenInitial({required super.tabIndex});
}
