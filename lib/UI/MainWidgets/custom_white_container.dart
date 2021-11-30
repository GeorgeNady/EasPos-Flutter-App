import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class CustomWhiteContainer extends StatelessWidget {
  final child;

  CustomWhiteContainer({@required this.child});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenWidth * 0.02),
      decoration: BoxDecoration(
        color: MyColors.white,
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
