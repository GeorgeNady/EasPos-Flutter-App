
import 'package:easpos/UI/Authentication/ForgetPassword/forget_password.dart';
import 'package:easpos/UI/Authentication/LogIn/login.dart';
import 'package:easpos/UI/Authentication/Register/register.dart';
import 'package:easpos/UI/Authentication/Splash/splash.dart';
import 'package:easpos/UI/Home/home_screen.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:flutter/material.dart';

import 'named-navigator.dart';

class NamedNavigatorImpl implements NamedNavigator {

  static final GlobalKey<NavigatorState> navigatorState = new GlobalKey<NavigatorState>();
  static final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SPLASH_ROUTER: return MaterialPageRoute(builder: (_) => SplashScreen(navigator: navigatorState,));
      case Routes.LOGIN_ROUTE: return MaterialPageRoute(builder: (_) => LoginScreen(navigator: navigatorState,));
      case Routes.REGISTER_ROUTE: return MaterialPageRoute(builder: (_) => RegisterScreen(navigator: navigatorState,));
      case Routes.FORGET_PASS_ROUTE: return MaterialPageRoute(builder: (_) => ForgetPasswordScreen(navigator: navigatorState,));
      case Routes.HOME_ROUTE: return MaterialPageRoute(builder: (_) => HomeScreen(navigator: navigatorState,));
      default : return MaterialPageRoute(builder: (_) => SplashScreen(navigator: navigatorState,));
    }
  }

  @override
  void pop({dynamic result}) {
    if (navigatorState.currentState.canPop())
      navigatorState.currentState.pop(result);
  }

  @override
  Future push(String routeName,
      {arguments, bool replace = false, bool clean = false}) {
    if (clean)
      return navigatorState.currentState.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);

    if (replace)
      return navigatorState.currentState
          .pushReplacementNamed(routeName, arguments: arguments);

    return navigatorState.currentState
        .pushNamed(routeName, arguments: arguments);
  }

  @override
  void popUntil(String routeName) {
    if (navigatorState.currentState.canPop())
      navigatorState.currentState.popUntil(ModalRoute.withName(routeName));
  }
}
