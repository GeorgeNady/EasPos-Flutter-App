import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';


class ItemImageColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_box_outlined,
                color: MyColors.red,
              ),
              const SizedBox(width: 5,),
              Text(
                'إضافة صورة صنف',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'DIN',
                    color: MyColors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: 250,
          height: 200,
          color: MyColors.grey,
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset('assets/images/view.png'),
                const SizedBox(width: 5,),
                Text(
                  'استعراض',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DIN',
                      color: MyColors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.close,
                  color: MyColors.red,
                ),
                const SizedBox(width: 5,),
                Text(
                  'حذف',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DIN',
                      color: MyColors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
