import 'package:easpos/UI/Categories/widgets/categories_screen_body.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: screenWidth * 0.04,
        horizontal: screenWidth * 0.04,
      ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(
                Icons.add_circle_outline,
                color: MyColors.red,
                size: 40,
              ),
              title: Text(
                'إضافة صنف',
                style: TextStyle(
                  fontFamily: 'DIN',
                  color: MyColors.black,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: MyColors.red, width: 2),
                  bottom: BorderSide(color: MyColors.red, width: 2),
                ),
              ),
              child: CategoriesScreenBody(),
            ),
          ),
        ],
      ),
    );
  }
}
