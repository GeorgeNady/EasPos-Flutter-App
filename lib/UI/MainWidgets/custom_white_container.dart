import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class CustomWhiteContainer extends StatelessWidget {
  final child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  CustomWhiteContainer({@required this.child, this.padding, this.margin});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: padding?? const EdgeInsets.all(0),
      margin: margin?? const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: MyColors.grey.withOpacity(0.3),
            blurRadius: 6,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}
