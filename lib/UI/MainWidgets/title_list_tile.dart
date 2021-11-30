import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class TitleListTile extends StatelessWidget {
  final title;
  final icon;

  TitleListTile({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: MyColors.red,
        size: 40,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'DIN',
          color: MyColors.black,
          fontSize: 22,
        ),
      ),
    );
  }
}
