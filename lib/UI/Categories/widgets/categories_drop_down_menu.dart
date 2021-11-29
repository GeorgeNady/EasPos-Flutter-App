import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';


class CategoriesDropDownMenu extends StatefulWidget {
  @override
  _CategoriesDropDownMenuState createState() => _CategoriesDropDownMenuState();
}

class _CategoriesDropDownMenuState extends State<CategoriesDropDownMenu> {
  String currentValue = 'فئة 1';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: MyColors.grey,
          width: 1,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: currentValue,
          onChanged: (value) {
            setState(() {
              currentValue = value;
            });
          },
          isExpanded: true,
          icon: Icon(Icons.keyboard_arrow_down,
              color: MyColors.grey),
          iconSize: 30,
          items: [
            DropdownMenuItem(
              value: 'فئة 1',
              child: Text(
                'فئة 1',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'DIN',
                  color: MyColors.grey,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'فئة 2',
              child: Text(
                'فئة 2',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'DIN',
                  color: MyColors.grey,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'فئة 3',
              child: Text(
                'فئة 3',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'DIN',
                  color: MyColors.grey,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'فئة 4',
              child: Text(
                'فئة 4',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'DIN',
                  color: MyColors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
