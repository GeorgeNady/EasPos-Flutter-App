import '../../MainWidgets/custom_elevated_button.dart';
import 'package:easpos/UI/MainWidgets/custom_white_container.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:easpos/Utiles/enumeration.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomElevatedButton(
            text: 'كاش',
            textColor: MyColors.black,
            function: () {},
            icon: Icon(
              Icons.attach_money,
              color: MyColors.black,
            ),
            direction: CustomButtonDirection.Vertical,
          ),
        ),
        Expanded(
          flex: 2,
          child: CustomElevatedButton(
            text: 'فيزا',
            textColor: MyColors.black,
            function: () {},
            icon: Icon(
              FontAwesomeIcons.ccVisa,
              color: MyColors.black,
            ),
            direction: CustomButtonDirection.Vertical,
          ),
        ),
        Expanded(
          flex: 2,
          child: CustomElevatedButton(
            text: 'آجل',
            textColor: MyColors.black,
            function: () {},
            icon: Icon(
              Icons.money,
              color: MyColors.black,
            ),
            direction: CustomButtonDirection.Vertical,
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: CustomWhiteContainer(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'المدفوع',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'DIN',
                            color: MyColors.black),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'DIN',
                            color: MyColors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: CustomWhiteContainer(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'المتبقي',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'DIN',
                            color: MyColors.black),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'DIN',
                            color: MyColors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
