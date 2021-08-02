import 'dart:async';
import 'package:easpos/Components/AnimatedWidget.dart';
import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:easpos/Utiles/shared_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  final navigator;

  const SplashScreen({Key key, this.navigator}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      preference.readString(CachingKey.USER_TYPE).then((value)  {
        if (value == 'مستخدم') {
          NamedNavigatorImpl().push(Routes.HOME_ROUTE , clean: true);
        } else {
          NamedNavigatorImpl().push(Routes.LOGIN_ROUTE , clean: true);
        }
      });
    });
    // FirebaseNotifications().setUpFirebase(widget.navigator);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedWidgets(
              widget: Image.asset(
                'assets/images/logo.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              horizontalOffset: 5,
              duration: 3,
            ),
          ],
        ),
      ),
    );
  }
}
