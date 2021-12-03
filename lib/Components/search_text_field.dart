import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final hint;

  SearchTextField({@required this.hint});
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 16,
        color: MyColors.grey,
        fontFamily: 'DIN',
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16,
          color: MyColors.grey,
          fontFamily: 'DIN',
        ),
        prefixIcon: Icon(
          Icons.search,
          color: MyColors.red,
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
