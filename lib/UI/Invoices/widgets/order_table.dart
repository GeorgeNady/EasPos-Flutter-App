import 'package:easpos/UI/Invoices/widgets/order_table_row.dart';
import 'package:flutter/material.dart';

class OrderTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
        OrderTableRow(price: 100, number: 1, foodItem: 'سندويش شاورما'),
      ],
    );
  }
}
