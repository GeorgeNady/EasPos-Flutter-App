import 'package:flutter/material.dart';
class CustomIconContainer extends StatelessWidget {
  final IconData icon ;

  const CustomIconContainer({Key key, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0) , bottomLeft: Radius.circular(30.0)),
        ),
        child: Center(
          child: Icon(icon , color: Colors.grey , size: 18,),
        ),
      ),
    );
  }
}
