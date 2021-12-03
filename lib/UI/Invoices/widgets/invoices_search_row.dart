import 'package:easpos/Components/search_text_field.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class InvoicesSearchRow extends StatelessWidget {
  final outlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: MyColors.grey, width: 2),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: SearchTextField(
              hint: 'ابحث عن عميل',
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                enabledBorder: outlineBorder,
                focusedBorder: outlineBorder,
                errorBorder: outlineBorder,
                focusedErrorBorder: outlineBorder,
              ),
              hint: Text('العميل', style: TextStyle(fontFamily: 'DIN', fontSize: 14, color: MyColors.grey),),
              items: [],
            ),
          ),
        ],
      ),
    );
  }
}
