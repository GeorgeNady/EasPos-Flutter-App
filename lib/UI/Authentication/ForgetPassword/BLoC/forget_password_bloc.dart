
import 'package:easpos/App/app_event.dart';
import 'package:easpos/App/app_state.dart';
import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';



class ForgetPasswordBloc extends Bloc<AppEvent, AppState> {
  final _phone = BehaviorSubject<String>();
  final newPassword = BehaviorSubject<String>();
  final _confirm = BehaviorSubject<String>();
  final _code = BehaviorSubject<String>();

  ForgetPasswordBloc() : super(Start());

  Function(String) get updatePhone => _phone.sink.add;

  Function(String) get updateNewPassword => newPassword.sink.add;

  Function(String) get updateCode => _code.sink.add;

  Function(String) get updateConfirm => _confirm.sink.add;

  @override
  Future<void> close() {
    _phone.close();
    newPassword.close();
    _confirm.close();
    _code.close();
    return super.close();
  }


  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    yield Loading();
    if (event is Restart) {
      yield Start();
    }
  }
}

