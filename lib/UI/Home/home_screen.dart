import 'package:flutter/material.dart';
import 'package:easpos/Components/custom_app_bar.dart';
import 'package:easpos/Components/side_menu.dart';
import 'widgets/home.dart';

class HomeScreen extends StatelessWidget {
  final navigator;
  final breakPoint;

  const HomeScreen({Key key, this.navigator, this.breakPoint = 1000}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < breakPoint)
      return Scaffold(
        appBar: CustomAppBar(),
        drawer: Drawer(
          child: SideMenu(),
        ),
        body: Home(),
      );
    else
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: SideMenu(),
          ),
          Expanded(
            flex: 4,
            child: Scaffold(
              appBar: CustomAppBar(),
              body: Home(),
            ),
          ),
        ],
      );
  }

}
