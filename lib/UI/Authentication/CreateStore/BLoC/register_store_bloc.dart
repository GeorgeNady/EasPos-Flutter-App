import 'package:easpos/App/app_event.dart';
import 'package:easpos/App/app_state.dart';
import 'package:easpos/Utiles/shared_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class RegisterStoreBloc extends Bloc<AppEvent, AppState> {

  final _name = BehaviorSubject<String>();
  final _email = BehaviorSubject<String>();
  final _companyName = BehaviorSubject<String>();
  final _phone = BehaviorSubject<String>();
  final password = BehaviorSubject<String>();
  final _confirmed = BehaviorSubject<String>();

  SharedHelper _helper = SharedHelper();

  String emailCashed;
  String phoneCashed;

  RegisterStoreBloc() : super(Start());


  String get email => emailCashed;

  String get phoneNumber => phoneCashed;

  Function(String) get updateEmail => _email.sink.add;

  Function(String) get updateName => _name.sink.add;

  Function(String) get updateCompanyName => _companyName.sink.add;

  Function(String) get updatePhone => _phone.sink.add;

  Function(String) get updatePassword => password.sink.add;

  Function(String) get updateConfirmedPassword => _confirmed.sink.add;

  @override
  Future<void> close() {
    _name.close();
    _email.close();
    _companyName.close();
    _phone.close();
    password.close();
    _confirmed.close();
    return super.close();
  }



  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    yield Loading();
    if (event is Click) {}
    yield Done();
  }
}
