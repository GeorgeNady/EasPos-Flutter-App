import 'package:easpos/UI/Authentication/CreateStore/BLoC/register_store_bloc.dart';
import 'package:easpos/UI/Authentication/LogIn/BLoC/login_bloc.dart';
import 'package:easpos/UI/Authentication/Register/BLoC/register_bloc.dart';
import 'package:easpos/UI/Authentication/Splash/BLoC/splash_bloc.dart';
import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        BlocProvider<RegisterStoreBloc>(
          create: (_) => RegisterStoreBloc(),
        ),
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
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        navigatorKey: NamedNavigatorImpl.navigatorState,
        onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: MyColors.scaffoldBackground,
        ),
        initialRoute: Routes.LOGIN_ROUTE,
      ),
    );
  }
}
