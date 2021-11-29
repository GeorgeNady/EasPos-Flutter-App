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
    return Expanded(
      child: GestureDetector(
        onTap: function,
        child: Container(
          decoration: BoxDecoration(
            color: MyColors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Center(
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
