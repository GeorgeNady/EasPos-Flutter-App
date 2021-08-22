import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class RegisterTextField extends StatefulWidget {
  final IconData icon;
  final TextInputType type;
  final String hint;
  final Function onChange;
  final Function validate;
  final int maxLines;
  final TextEditingController controller;
  final int maxLength;

  const RegisterTextField({
    Key key,
    this.icon,
    this.type,
    this.hint,
    this.onChange,
    this.validate,
    this.maxLines,
    this.controller,
    this.maxLength,
  }) : super(key: key);

  @override
  _RegisterTextFieldState createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        maxLength: widget.maxLength,
        controller: widget.controller,
        maxLines: widget.maxLines ?? null,
        validator: widget.validate,
        keyboardType: widget.type,
        onChanged: widget.onChange,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: widget.hint == null ? '' : widget.hint,
          filled: true,
          disabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.black38)),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.black38)),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.black38)),
          fillColor: MyColors.white,
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontFamily: 'cairo'),
          prefixIcon: widget.icon != null
              ? Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    child: Icon(
                      widget.icon,
                      size: 18,
                      color: Colors.grey[400],
                    ),
                  ),
                )
              : null,
          contentPadding:
              EdgeInsets.only(right: 20.0, top: 15.0, bottom: 15.0, left: 20),
        ),
      ),
    );
  }
}
