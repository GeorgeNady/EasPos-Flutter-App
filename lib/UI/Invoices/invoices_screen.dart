import 'package:easpos/UI/Invoices/widgets/food_picker.dart';
import 'package:easpos/UI/Invoices/widgets/invoices_container.dart';
import 'package:flutter/material.dart';

class InvoicesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: FoodPicker(),
        ),
        Expanded(
          flex: screenWidth > 1100 ? 3 : 4,
          child: InvoicesContainer(),
        ),
      ],
    );
  }
}
