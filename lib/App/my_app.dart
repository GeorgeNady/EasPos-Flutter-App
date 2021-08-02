
import 'package:easpos/UI/Authentication/LogIn/BLoC/login_bloc.dart';
import 'package:easpos/UI/Authentication/Splash/BLoC/splash_bloc.dart';
import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        navigatorKey: NamedNavigatorImpl.navigatorState,
        onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Routes.SPLASH_ROUTER,
      ),
    );
  }
}