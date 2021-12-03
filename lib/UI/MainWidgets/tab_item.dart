import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String text;
  final Function function;

  TabItem({
    @required this.text,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'DIN',
                color: MyColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
