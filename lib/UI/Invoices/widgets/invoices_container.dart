import '../../MainWidgets/custom_elevated_button.dart';
import 'package:easpos/UI/Invoices/widgets/order_table_header.dart';
import 'package:easpos/UI/Invoices/widgets/payment_container.dart';
import 'package:easpos/UI/MainWidgets/custom_white_container.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calculation_container.dart';
import 'invoices_place_row.dart';
import 'invoices_search_row.dart';
import 'order_table.dart';

class InvoicesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomElevatedButton(
                text: 'جديد',
                icon: Icon(
                  Icons.add_circle_outline,
                  color: MyColors.green,
                  size: 30,
                ),
                textColor: MyColors.black,
                function: () {},
              ),
            ),
            Expanded(
              child: CustomElevatedButton(
                text: 'حفظ',
                icon: Icon(
                  Icons.save_outlined,
                  color: MyColors.blue,
                  size: 30,
                ),
                textColor: MyColors.black,
                function: () {},
              ),
            ),
            Expanded(
              child: CustomElevatedButton(
                text: 'إغلاق',
                icon: Icon(
                  Icons.close,
                  color: MyColors.red,
                  size: 30,
                ),
                textColor: MyColors.black,
                function: () {},
              ),
            ),
          ],
        ),
        Expanded(
          child: CustomWhiteContainer(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: InvoicesPlaceRow(),
                ),
                Expanded(
                  flex: 2,
                  child: InvoicesSearchRow(),
                ),
                Expanded(
                  flex: 1,
                  child: OrderTableHeader(),
                ),
                Expanded(
                  flex: screenHeight > 800 ? 7 : 4,
                  child: OrderTable(),
                ),
                Expanded(
                  flex: 2,
                  child:  Row(
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'لوحة المفاتيح',
                          textSize: 13,
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: MyColors.green,
                            size: 30,
                          ),
                          textColor: MyColors.black,
                          function: () {},
                        ),
                      ),
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'الملاحظات',
                          textSize: 13,
                          icon: Icon(
                            Icons.save_outlined,
                            color: MyColors.blue,
                            size: 30,
                          ),
                          textColor: MyColors.black,
                          function: () {},
                        ),
                      ),
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'تعليق الفاتورة',
                          textSize: 13,
                          icon: Icon(
                            Icons.close,
                            color: MyColors.red,
                            size: 30,
                          ),
                          textColor: MyColors.black,
                          function: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: CalculationContainer(),
                ),
                Expanded(
                  flex: 2,
                  child: CustomWhiteContainer(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text(
                        'صافي المبلغ',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'DIN',
                          fontWeight: FontWeight.bold,
                          color: MyColors.black,
                        ),
                      ),
                      trailing: Text(
                        '52.00',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'DIN',
                          fontWeight: FontWeight.bold,
                          color: MyColors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: PaymentContainer(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/* InvoicesPlaceRow(),
                const SizedBox(
                  height: 6,
                ),
                InvoicesSearchRow(),
                OrderTableHeader(),
                Expanded(
                  child: OrderTable(),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: 'لوحة المفاتيح',
                        textSize: 12,
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: MyColors.green,
                          size: 20,
                        ),
                        textColor: MyColors.black,
                        function: () {},
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        text: 'الملاحظات',
                        textSize: 12,
                        icon: Icon(
                          Icons.save_outlined,
                          color: MyColors.blue,
                          size: 20,
                        ),
                        textColor: MyColors.black,
                        function: () {},
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        text: 'تعليق الفاتورة',
                        textSize: 12,
                        icon: Icon(
                          Icons.close,
                          color: MyColors.red,
                          size: 20,
                        ),
                        textColor: MyColors.black,
                        function: () {},
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: CalculationContainer(),
                ),
                Expanded(
                  child: CustomWhiteContainer(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text(
                        'صافي المبلغ',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'DIN',
                          fontWeight: FontWeight.bold,
                          color: MyColors.black,
                        ),
                      ),
                      trailing: Text(
                        '52.00',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'DIN',
                          fontWeight: FontWeight.bold,
                          color: MyColors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(child: PaymentContainer()),*/

/* InvoicesPlaceRow(),
                const SizedBox(
                  height: 6,
                ),
                InvoicesSearchRow(),
                OrderTableHeader(),
                Expanded(
                  child: OrderTable(),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: 'لوحة المفاتيح',
                        textSize: 12,
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: MyColors.green,
                          size: 20,
                        ),
                        textColor: MyColors.black,
                        function: () {},
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        text: 'الملاحظات',
                        textSize: 12,
                        icon: Icon(
                          Icons.save_outlined,
                          color: MyColors.blue,
                          size: 20,
                        ),
                        textColor: MyColors.black,
                        function: () {},
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        text: 'تعليق الفاتورة',
                        textSize: 12,
                        icon: Icon(
                          Icons.close,
                          color: MyColors.red,
                          size: 20,
                        ),
                        textColor: MyColors.black,
                        function: () {},
                      ),
                    ),
                  ],
                ),
                CalculationContainer(),
                CustomWhiteContainer(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: ListTile(
                    title: Text(
                      'صافي المبلغ',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DIN',
                        fontWeight: FontWeight.bold,
                        color: MyColors.black,
                      ),
                    ),
                    trailing: Text(
                      '52.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DIN',
                        fontWeight: FontWeight.bold,
                        color: MyColors.red,
                      ),
                    ),
                  ),
                ),
                PaymentContainer(),*/
