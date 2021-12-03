import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class InvoicesPlaceRow extends StatefulWidget {
  @override
  State<InvoicesPlaceRow> createState() => _InvoicesPlaceRowState();
}

class _InvoicesPlaceRowState extends State<InvoicesPlaceRow> {
  Map<String, bool> invoicesPlaces = {
    'توصيل': false,
    'سفري': false,
    'محلي': false,
  };

  void checkPlace(int index, bool newValue) {
    String selectedKey = invoicesPlaces.keys.toList()[index];

    if (!newValue)
      setState(() {
        invoicesPlaces[selectedKey] = newValue;
      });
    else {
      setState(() {
        invoicesPlaces[selectedKey] = newValue;
        invoicesPlaces.updateAll((key, value) {
          if (key != selectedKey)
            return false;
          else
            return true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'مكان الفاتورة',
          style: TextStyle(
            fontFamily: 'DIN',
            fontSize: 16,
            color: MyColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              bool currentValue = invoicesPlaces.values.toList()[0];
              checkPlace(0, !currentValue);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                invoicesPlaces.values.toList()[0]
                    ? Icon(
                        Icons.check_circle_outline,
                        color: MyColors.red,
                      )
                    : Icon(
                        Icons.circle_outlined,
                        color: MyColors.grey,
                      ),
                Text(
                  invoicesPlaces.keys.toList()[0],
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'DIN',
                    color: MyColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              bool currentValue = invoicesPlaces.values.toList()[1];
              checkPlace(1, !currentValue);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                invoicesPlaces.values.toList()[1]
                    ? Icon(
                  Icons.check_circle_outline,
                  color: MyColors.red,
                )
                    : Icon(
                  Icons.circle_outlined,
                  color: MyColors.grey,
                ),
                Text(
                  invoicesPlaces.keys.toList()[1],
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'DIN',
                    color: MyColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              bool currentValue = invoicesPlaces.values.toList()[2];
              checkPlace(2, !currentValue);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                invoicesPlaces.values.toList()[2]
                    ? Icon(
                  Icons.check_circle_outline,
                  color: MyColors.red,
                )
                    : Icon(
                  Icons.circle_outlined,
                  color: MyColors.grey,
                ),
                Text(
                  invoicesPlaces.keys.toList()[2],
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'DIN',
                    color: MyColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
