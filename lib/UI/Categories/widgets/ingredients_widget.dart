import 'package:easpos/Components/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class IngredientsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CustomTextFormField(hintText: 'الاسم'),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            flex: 1,
            child: CustomTextFormField(hintText: 'الكمية'),
          ),
        ],
      ),
    );
  }
}