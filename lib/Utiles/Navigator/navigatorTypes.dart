import 'package:flutter/material.dart';

class NavigatorTypes {

  void changeRoute({@required BuildContext context,@required  Widget widget, String name}) {
    FocusScope.of(context).requestFocus(FocusNode());
    Navigator.push(context, PageRouteBuilder(
      settings: RouteSettings(name: name ?? "" ),
        transitionDuration: Duration(milliseconds: 800),
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween(
                begin: Offset(1.0, 0.0), end: Offset.zero)
                .chain(CurveTween(curve: Curves.ease))
                .animate(animation),
            child: FadeTransition(
              opacity: Tween(begin: 10.0, end: 20.0)
                  .chain(CurveTween(curve: Curves.ease))
                  .animate(animation),
              child: child,
            ),
          );
        },
        pageBuilder: (context , a1 , a2) => widget));
  }

  void changeScreenReplacement(BuildContext context, Widget widget) {
    FocusScope.of(context).requestFocus(FocusNode());
    Navigator.pushReplacement(context, PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 800),
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween(
                begin: Offset(1.0, 0.0), end: Offset.zero)
                .chain(CurveTween(curve: Curves.ease))
                .animate(animation),
            child: FadeTransition(
              opacity: Tween(begin: 0.0, end: 1.0)
                  .chain(CurveTween(curve: Curves.ease))
                  .animate(animation),
              child: child,
            ),
          );
        },
        pageBuilder: (context , a1 , a2) => widget));
  }

  void changeScreenRemoveUntil(BuildContext context, Widget widget) {
    FocusScope.of(context).requestFocus(FocusNode());
    Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 800),
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween(
                begin: Offset(1.0, 0.0), end: Offset.zero)
                .chain(CurveTween(curve: Curves.ease))
                .animate(animation),
            child: FadeTransition(
              opacity: Tween(begin: 0.0, end: 1.0)
                  .chain(CurveTween(curve: Curves.ease))
                  .animate(animation),
              child: child,
            ),
          );
        },
        pageBuilder: (context , a1 , a2) => widget) , ((route) => false));
  }

}
