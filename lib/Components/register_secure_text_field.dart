import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';

class RegisterSecureTextField extends StatefulWidget {
  final bool obscureText;
  final VoidCallback onPressed;
  final bool withIcon;
  final IconData icon ;
  final String hint;
  final Function onChange;
  final Function validate;

  const RegisterSecureTextField(
      {Key key,
      this.obscureText,
      this.onPressed,
      this.withIcon,
      this.onChange,
      this.hint, this.validate, this.icon})
      : super(key: key);

  @override
  _RegisterSecureTextFieldState createState() =>
      _RegisterSecureTextFieldState();
}

class _RegisterSecureTextFieldState extends State<RegisterSecureTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: widget.validate,
        onChanged: widget.onChange,
        obscureText: widget.obscureText,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: widget.hint == null ? '' : widget.hint,
          filled: true,
          disabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide:
                  BorderSide(color: Colors.black38)),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.black38)),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.black38)),
          fillColor: MyColors.white,
          prefixIcon: widget.icon != null
              ? Padding(
            padding: const EdgeInsets.all(6),
            child: Icon(
              widget.icon,
              color: Colors.grey[400],
              size: 18,
            ),
          )
              : null,
          suffixIcon: widget.withIcon == true
              ? Padding(
                  padding: EdgeInsets.all(6),
                  child: widget.obscureText
                      ? InkWell(
                          onTap: widget.onPressed,
                          child: Icon(Icons.visibility_off),
                        )
                      : InkWell(
                          onTap: widget.onPressed,
                          child: Icon(Icons.visibility),
                        ))
              : null,
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontFamily: 'cairo'),
          contentPadding: EdgeInsets.only(right: 20.0, top: 15, bottom: 15, left: 20),

        ),
      ),
    );
  }
}
