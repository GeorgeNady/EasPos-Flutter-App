import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final navigator;

  const HomeScreen({Key key, this.navigator}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.backgroundColor2,
        appBar: AppBar(
          title: Text(
            "الصفحة الرئيسية",
            style: TextStyle(
              color: MyColors.white,
            ),
          ),
          actions: [
          // CustomLogoutIcon()
          ],
          backgroundColor: MyColors.accentColor,
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
             // TODO
            },
            isExtended: true,
            label: Text("طلباتى")
        ),
        body: Container()
    );
  }
}
