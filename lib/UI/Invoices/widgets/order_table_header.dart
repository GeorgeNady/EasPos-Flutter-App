import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderTableHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            width: 2,
            color: MyColors.grey,
        ),
      ),
      child: Row(
        children: [
          HeaderText(text: 'م', flex: 1),
          HeaderText(text: 'الصنف', flex: 3),
          HeaderText(text: 'السعر', flex: 2),
          HeaderText(text: 'الكمية', flex: 2),
          HeaderText(text: 'الإجمالي', flex: 2),
          HeaderText(text: 'الملاحظات', flex: 3),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 2,
                    color: MyColors.grey,
                  ),
                ),
              ),
              child: Icon(FontAwesomeIcons.solidTrashAlt, color: MyColors.black, size: 15,),),
          ),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  final text;
  final flex;
  HeaderText({@required this.text, @required this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        decoration: BoxDecoration(
          border: Border(
           right: BorderSide(
             width: 2,
             color: MyColors.grey,
           ),
          ),
        ),
        child: Center(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'DIN',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
