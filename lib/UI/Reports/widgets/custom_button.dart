import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final text;
  final icon;
  final iconColor;
  final onTap;

  CustomButton({@required this.icon, this.text, @required this.onTap, @required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: MyColors.grey, width: 2),
          boxShadow: [
            BoxShadow(
              color: MyColors.grey.withOpacity(0.3),
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'DIN',
                color: MyColors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              icon,
              color: iconColor,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
