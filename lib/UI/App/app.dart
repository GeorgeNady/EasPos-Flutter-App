import 'package:easpos/UI/Authentication/ForgetPassword/BLoC/forget_password_bloc.dart';
import 'package:easpos/UI/Authentication/LogIn/BLoC/login_bloc.dart';
import 'package:easpos/UI/Authentication/Register/BLoC/register_bloc.dart';
import 'package:easpos/UI/Authentication/Splash/BLoC/splash_bloc.dart';
import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();

}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashBloC>(
          create: (_) => SplashBloC(),
        ),
        BlocProvider<LoginBloc>(
          create: (_) => LoginBloc(),
        ),
        BlocProvider<RegisterBloc>(
          create: (_) => RegisterBloc(),
        ),
        BlocProvider<ForgetPasswordBloc>(
          create: (_) => ForgetPasswordBloc(),
        ),
        // BlocProvider<HomeBloc>(
        //   create: (_) => HomeBloc(),
        // ),

      ],
      child: MaterialApp(
        locale: Locale('ar'),
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ar'), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        debugShowCheckedModeBanner: false,
        navigatorKey: NamedNavigatorImpl.navigatorState,
        onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
        title: 'Share Location',
        theme: ThemeData(
          scaffoldBackgroundColor: MyColors.scaffoldBackground,
          primaryColor: MyColors.primaryColor,
          accentColor: MyColors.accentColor,
          fontFamily: 'cairo',
          cupertinoOverrideTheme: CupertinoThemeData(
            primaryColor: Color(0xFFE49E13),
            textTheme: CupertinoTextThemeData(
              primaryColor: Colors.black,
              textStyle: TextStyle(color: Colors.black),
            ),
          ),
          textTheme: Theme.of(context).textTheme.apply(
              displayColor: MyColors.black,
              bodyColor: MyColors.black,
              fontFamily: "cairo"),
        ),
        initialRoute: Routes.SPLASH_ROUTER,
      ),
    );
  }
}
