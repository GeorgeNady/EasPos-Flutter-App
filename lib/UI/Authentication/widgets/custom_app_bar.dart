import 'package:flutter/material.dart';
class CustomForgetAppbar extends StatelessWidget {
  final String label ;

  const CustomForgetAppbar({Key key, this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0)),
            color: Colors.black ,
        border: Border.all(color: Colors.black)
      ),
      child: Row(
        children: [
          InkWell(
              onTap: ()=>Navigator.of(context).pop(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.arrow_back , color: Colors.white,),
              )),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*.08),
            child: Text(label ,textAlign: TextAlign.center, style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
