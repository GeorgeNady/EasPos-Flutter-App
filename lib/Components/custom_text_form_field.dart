import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final hintText;


  CustomTextFormField({
    @required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        hintText: hintText,
        hintStyle: TextStyle(
          color: MyColors.grey,
          fontFamily: 'DIN',
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
      ),
    );
  }
}
