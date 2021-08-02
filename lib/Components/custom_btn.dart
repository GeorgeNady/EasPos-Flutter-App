import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomBtn extends StatefulWidget {
  final String text;
  final Function onTap;
  final Color color;
  final Color txtColor;
  final IconData icon;
  final bool loading;
  final double btnWidth ;
  final double txtFontSize ;

  const CustomBtn(
      {Key key,
      @required this.text,
      @required this.onTap,
      @required this.color,
      this.txtColor,
      this.icon,
      this.loading = false, this.btnWidth, this.txtFontSize})
      : super(key: key);

  @override
  _CustomBtnState createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
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
      return Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Container(
          height: 60,
          width: widget.btnWidth ?? MediaQuery.of(context).size.width*.5,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white , width: 1 ),
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: MaterialButton(
            height: 50,
            onPressed: (){
              FocusScope.of(context).requestFocus(FocusNode());
              widget.onTap();
            },
            color: widget.color ?? Theme.of(context).accentColor,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: widget.txtColor ?? Colors.white ,
                      fontWeight: FontWeight.bold, fontSize: widget.txtFontSize ?? 16),
                ),
                widget.icon != null ? SizedBox(width: 10) : Container(),
                widget.icon != null ? Icon(widget.icon, color: widget.txtColor) : Container()
              ],
            ),
          ),
        ),
      );
    }
  }
}
