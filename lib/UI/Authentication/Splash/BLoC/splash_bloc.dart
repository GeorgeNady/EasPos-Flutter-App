
import 'package:easpos/App/app_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../App/app_state.dart';


class SplashBloC extends Bloc<AppEvent, AppState> {
  SplashBloC() : super(Start());
  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    yield Loading();
    yield Done();
  }
}

