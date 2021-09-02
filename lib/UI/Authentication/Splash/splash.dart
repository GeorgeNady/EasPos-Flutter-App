import 'dart:async';
import 'package:easpos/Components/AnimatedWidget.dart';
import 'package:easpos/Utiles/Navigator/named-navigator_impl.dart';
import 'package:easpos/Utiles/Navigator/routes.dart';
import 'package:easpos/Utiles/colors.dart';
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
      NamedNavigatorImpl().navigate(Routes.LOGIN_ROUTE , clean: true);
      preference.readString(CachingKey.USER_ID).then((value)  {
        if (value.isEmpty) {
          NamedNavigatorImpl().navigate(Routes.LOGIN_ROUTE , clean: true);
        } else {
          NamedNavigatorImpl().navigate(Routes.HOME_ROUTE , clean: true);
        }
      });
    });
    // FirebaseNotifications().setUpFirebase(widget.navigator);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedWidgets(
              widget: Image.asset(
                'assets/images/the_chef_logo.png',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
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
