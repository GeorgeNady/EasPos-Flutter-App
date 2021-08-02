import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class CustomForgetBtn extends StatefulWidget {
  final String text;
  final Function onTap;
  final Color color;
  final Color txtColor;
  final IconData icon;
  final bool loading;
  final double btnWidth ;
  final double txtFontSize ;

  const CustomForgetBtn({Key key, this.text, this.onTap, this.color, this.txtColor, this.icon, this.loading, this.btnWidth, this.txtFontSize}) : super(key: key);
  @override
  _CustomForgetBtnState createState() => _CustomForgetBtnState();
}

class _CustomForgetBtnState extends State<CustomForgetBtn> {
  @override
  Widget build(BuildContext context) {
    if (widget.loading) {
      return Center(
        child: SpinKitCircle(
          color: Theme.of(context).accentColor,
          size: 30,
        ),
      );
    } else {
      return Container(
        height: 80,
        width: widget.btnWidth ?? MediaQuery.of(context).size.width*.5,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white , width: 1 ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0) ,
                topLeft: Radius.circular(30.0))
        ),
        child: MaterialButton(
          height: 50,
          onPressed: widget.onTap,
          color: widget.color ?? Theme.of(context).accentColor,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(30.0) , topLeft: Radius.circular(30.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.txtColor ?? Colors.white ,fontWeight: FontWeight.bold, fontSize: widget.txtFontSize ?? 18),
              ),
              widget.icon != null ? SizedBox(width: 10) : Container(),
              widget.icon != null ? Icon(widget.icon, color: widget.txtColor) : Container()
            ],
          ),
        ),
      );
    }
  }
}
