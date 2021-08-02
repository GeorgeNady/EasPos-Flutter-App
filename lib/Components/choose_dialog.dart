import 'package:flutter/material.dart';

Widget chooseDialog(
    {msg,
    buttonTxt,
    buttonColor,
    buttonTxtColor,
    headTxtColor,
    context,
    btnOnPress,
    changed,
    selectedDepartment}) {
  return SimpleDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(20),
    )),
    backgroundColor: Colors.grey[800],
    elevation: 3,
    contentPadding: EdgeInsets.all(5),
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          msg,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: headTxtColor,
              fontFamily: 'cairo',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          title:  Text(
            'Client',
            style: TextStyle(
              color:  Theme.of(context).accentColor,
              fontFamily: 'cairo',
            ),
          ),
          leading: Radio(
            value: 'Client',
            groupValue: selectedDepartment,
            activeColor: Theme.of(context).accentColor,
            onChanged: changed,
          ),
        ),
      ),
      Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          title:  Text(
            'Provider',
            style: TextStyle(
              color:  Theme.of(context).accentColor,
              fontFamily: 'cairo',
            ),
          ),
          leading: Radio(
              value: 'Provider',
              groupValue: selectedDepartment,
              activeColor: Theme.of(context).accentColor,
              onChanged: changed),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: MaterialButton(
          onPressed: () {
            btnOnPress();
          },
          elevation: 3,
          height: 45,
          color: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
            buttonTxt,
            style: TextStyle(
                fontSize: 17, fontFamily: 'cairo', color: buttonTxtColor),
          ),
        ),
      ),
    ],
  );
}
