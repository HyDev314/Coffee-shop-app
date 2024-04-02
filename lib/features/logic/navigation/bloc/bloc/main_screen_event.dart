part of 'main_screen_bloc.dart';

abstract class MainScreenEvent {
  const MainScreenEvent();
}

class TabChange extends MainScreenEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}
