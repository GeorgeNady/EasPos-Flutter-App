import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easpos/App/app_event.dart';
import 'package:easpos/App/app_state.dart';

class HomeBloc extends Bloc<AppEvent, AppState> {
  HomeBloc(AppState initialState) : super(initialState);

  @override
  Stream<AppState> mapEventToState(AppEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }


}