import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc() : super(const MainScreenInitial(tabIndex: 0)) {
    on<MainScreenEvent>((event, emit) {
      if (event is TabChange) {
        emit(MainScreenInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
