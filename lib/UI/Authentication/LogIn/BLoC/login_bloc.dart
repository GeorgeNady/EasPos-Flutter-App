
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easpos/App/app_event.dart';
import 'package:easpos/App/app_state.dart';
import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:easpos/Utiles/constants.dart';
import 'package:easpos/Utiles/shared_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends Bloc<AppEvent, AppState> {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();
  SharedHelper _helper = SharedHelper();

  LoginBloc() : super(Start());

  Function(String) get updateEmail => _email.sink.add;

  Function(String) get updatePassword => _password.sink.add;

  @override
  Future<void> close() {
    _email.close();
    _password.close();
    return super.close();
  }

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    if (event is Click) {
      yield Loading();
      try {
        FirebaseAuth auth = FirebaseAuth.instance;
        await auth.signInWithEmailAndPassword(
            email: _email.value,
            password: _password.value
        );
        Fluttertoast.showToast(msg: "تم تسجيل الدخول بنجالح");
        final String uid = auth.currentUser.uid;
        final usersCollection = FirebaseFirestore.instance.collection(Constants.USERS_COLLECTION);
        final querySnapshot = await usersCollection
            .where('uid',isEqualTo: uid)
            .get();

        querySnapshot.docs.forEach((element) {
          _helper.writeData(CachingKey.USER_ID, element.get('uid'));
          _helper.writeData(CachingKey.USER_NAME, element.get('name'));
          _helper.writeData(CachingKey.USER_EMAIL, element.get('email'));
          _helper.writeData(CachingKey.MOBILE_NUMBER, element.get('phone'));
          _helper.writeData(CachingKey.USER_TYPE, element.get('usertype'));
          _helper.writeData(CachingKey.ADDRESS, element.get('address'));

          print('++++++++++++++++++++++ ${element.get('usertype')}');

          NamedNavigatorImpl().push(Routes.MAIN_ROUTE,replace: true,clean: true);

        });

        yield Done();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Fluttertoast.showToast(msg: "من فضلك تأكد من البريد الألكترونى");
        } else if (e.code == 'wrong-password') {
          Fluttertoast.showToast(msg: "كلمة المرور غير صحيحة ");
        }
        yield Done();
      }
    }
  }
}
