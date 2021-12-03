import 'package:easpos/Utiles/enumeration.dart';
import 'package:flutter/material.dart';
import 'package:easpos/Utiles/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final Icon icon;
  final Function function;
  final Color color;
  final CustomButtonDirection direction;
  final BoxBorder border;
  final EdgeInsetsGeometry padding;

  CustomElevatedButton({
    @required this.text,
    @required this.textColor,
    this.icon,
    this.textSize,
    this.color,
    this.padding,
    this.direction = CustomButtonDirection.Horizontal,
    this.border,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: padding ?? const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 7),
        decoration: BoxDecoration(
          color: color ?? MyColors.white,
          borderRadius: BorderRadius.circular(6),
          border: border?? Border.fromBorderSide(BorderSide.none),
          boxShadow: [
            BoxShadow(
              color: MyColors.grey.withOpacity(0.5),
              blurRadius: 6,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: icon == null
            ? Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: textSize ?? 16,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontFamily: 'DIN',
                  ),
                ),
              )
            : direction == CustomButtonDirection.Horizontal
                ? Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              text,
                              style: TextStyle(
                                fontSize: textSize ?? 16,
                                color: textColor,
                                fontFamily: 'DIN',
                              ),
                            ),
                          ),
                        ),
                        icon,
                      ],
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: textSize ?? 16,
                          color: textColor,
                          fontFamily: 'DIN',
                        ),
                      ),
                      const SizedBox(height: 6,),
                      icon,
                    ],
                  ),
      ),
    );
  }
}
