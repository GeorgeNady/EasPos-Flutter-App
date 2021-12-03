import 'package:easpos/UI/Categories/widgets/categories_screen_body.dart';
import 'package:easpos/UI/MainWidgets/custom_white_container.dart';
import 'package:easpos/UI/MainWidgets/title_list_tile.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return CustomWhiteContainer(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenWidth * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: TitleListTile(
              title: 'إضافة صنف',
              icon: Icons.add_circle_outline,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.all(10),
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
