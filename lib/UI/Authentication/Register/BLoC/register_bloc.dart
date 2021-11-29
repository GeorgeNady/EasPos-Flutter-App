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
  final userType = BehaviorSubject<String>();
  final _phone = BehaviorSubject<String>();
  final _address = BehaviorSubject<String>();
  final password = BehaviorSubject<String>();
  final _confirmed = BehaviorSubject<String>();
  final _lat = BehaviorSubject<String>();
  final _long = BehaviorSubject<String>();

  SharedHelper _helper = SharedHelper();

  String emailCashed;
  String phoneCashed;

  RegisterBloc() : super(Start());

  String get email => emailCashed;

  String get phoneNumber => phoneCashed;

  Function(String) get updateEmail => _email.sink.add;

  Function(String) get updateName => _name.sink.add;

  Function(String) get updateUserType => userType.sink.add;

  Function(String) get updatePhone => _phone.sink.add;

  Function(String) get updateAddress => _address.sink.add;

  Function(String) get updatePassword => password.sink.add;

  Function(String) get updateConfirmedPassword => _confirmed.sink.add;

  Function(String) get updateLat => _lat.sink.add;

  Function(String) get updateLong => _long.sink.add;

  Stream<String> get userTypeStream => userType.stream.asBroadcastStream() ;

  @override
  Future<void> close() {
    _name.close();
    _email.close();
    userType.close();
    _phone.close();
    password.close();
    _confirmed.close();
    _lat.close();
    _long.close();
    _address.close();
    return super.close();
  }

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    yield Loading();
    if (event is Click) {
      try {
        /**
         * GET LOCATION DETAILS
         * AND SAVE IT TO SHARED PREFS
         * */
        MapHelper().getLocation();

        //////////////////////////////////////////////////// DECLARING VARIABLES
        FirebaseAuth auth = FirebaseAuth.instance;
        FirebaseFirestore fireStore = FirebaseFirestore.instance;
        String _uid;
        String strLat;
        String strLong;

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
          verified: false,
          phone: _phone.valueOrNull,
          address: _address.valueOrNull,
          usertype: userType.valueOrNull,
        );

        /**
         * save the data to the shared prefs
         * */
        _helper.writeData(CachingKey.USER_ID, user.uid);
        _helper.writeData(CachingKey.USER_NAME, user.name);
        _helper.writeData(CachingKey.USER_EMAIL, user.email);
        _helper.writeData(CachingKey.MOBILE_NUMBER, user.phone);
        _helper.writeData(CachingKey.USER_TYPE, user.usertype);
        _helper.writeData(CachingKey.ADDRESS, user.address);

        /**
         * CREATE USER RECORD ON FIREBASE
         * */
        await fireStore
            .collection(Constants.USERS_COLLECTION)
            .add(user.toJson())
            .then((value) => Fluttertoast.showToast(msg: "User Added Successfully"))
            .catchError((error) => Fluttertoast.showToast(msg: "Failed to add user: $error"));

        NamedNavigatorImpl().push(Routes.MAIN_ROUTE,replace: true,clean: true);


        yield Done();
      } catch (e) {
        print(e);
        yield Done();
      }
    }
  }
}
