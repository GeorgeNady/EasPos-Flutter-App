
import 'package:flutter/material.dart';
class CustomLogoTextIntro extends StatelessWidget {
  final String imagePath ;
  final String mainText ;
  final String subText ;

  const CustomLogoTextIntro({Key key, this.imagePath, this.mainText, this.subText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/${imagePath ?? "logo"}.png', height: 150),
        SizedBox(height: 20,),
        Text(mainText , style: TextStyle(fontSize: 29,),),
        SizedBox(height: 10,),
        Text(subText , style: TextStyle(fontSize: 17  , color: Colors.grey),),
        SizedBox(height: 20),


      ],
    );
  }
}
