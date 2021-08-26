import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easpos/App/app_event.dart';
import 'package:easpos/Models/user_data_model.dart';
import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:easpos/Utiles/constants.dart';
import 'package:easpos/Utiles/map_helper.dart';
import 'package:easpos/Utiles/shared_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../App/app_state.dart';

class RegisterBloc extends Bloc<AppEvent, AppState> {
  final _name = BehaviorSubject<String>();
  final _email = BehaviorSubject<String>();
  final _phone = BehaviorSubject<String>();
  final password = BehaviorSubject<String>();
  final _confirmed = BehaviorSubject<String>();

  SharedHelper _helper = SharedHelper();

  String emailCashed;
  String phoneCashed;

  RegisterBloc() : super(Start());

  String get email => emailCashed;

  String get phoneNumber => phoneCashed;

  Function(String) get updateEmail => _email.sink.add;

  Function(String) get updateName => _name.sink.add;

  Function(String) get updatePhone => _phone.sink.add;

  Function(String) get updatePassword => password.sink.add;

  Function(String) get updateConfirmedPassword => _confirmed.sink.add;

  @override
  Future<void> close() {
    _name.close();
    _email.close();
    _phone.close();
    password.close();
    _confirmed.close();
    return super.close();
  }

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    yield Loading();
    if (event is Click) {
      try {
        //////////////////////////////////////////////////// DECLARING VARIABLES
        FirebaseAuth auth = FirebaseAuth.instance;
        FirebaseFirestore fireStore = FirebaseFirestore.instance;
        String _uid;

        if (auth.currentUser != null) auth.signOut();

        /**
         * CREATE NEW USER ACCOUNT
         * Params : ( String email , String Pass )
         * */
        await auth.createUserWithEmailAndPassword(
            email: _email.value, password: password.value)
            .then((value) {
              _uid = value.user.uid;
              print('User Created Successfully');
            });


        /**
         * CREATE USER DATA
         * */

        var user = UserDataModel(
          uid: _uid,
          name: _name.valueOrNull,
          email: _email.valueOrNull,
          phone: _phone.valueOrNull
        );

        /**
         * save the data to the shared prefs
         * */
        _helper.writeData(CachingKey.USER_ID, user.uid);
        _helper.writeData(CachingKey.USER_NAME, user.name);
        _helper.writeData(CachingKey.USER_EMAIL, user.email);
        _helper.writeData(CachingKey.MOBILE_NUMBER, user.phone);

        /**
         * CREATE USER RECORD ON FIREBASE
         * */
        await fireStore
            .collection(Constants.USERS_COLLECTION)
            .add(user.toJson())
            .then((value) => Fluttertoast.showToast(msg: "User Added Successfully"))
            .catchError((error) => Fluttertoast.showToast(msg: "Failed to add user: $error"));

        NamedNavigatorImpl().navigate(Routes.HOME_ROUTE,replace: true,clean: true);


        yield Done();
      } catch (e) {
        print(e);
        yield Done();
      }
    }
  }
}
