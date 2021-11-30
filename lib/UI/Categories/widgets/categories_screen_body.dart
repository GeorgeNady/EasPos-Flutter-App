import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'item_image_column.dart';
import 'item_info_column.dart';

class CategoriesScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ItemInfoColumn(),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: ItemImageColumn(),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 35, right: 20),
            margin: screenWidth < 1000
                ? const EdgeInsets.only(right: 35)
                : const EdgeInsets.all(0),
            width: screenWidth >= 1000 ? 250 : 220,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                hintText: 'بحث عن الصنف',
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
            ),
          ),
        ),
      ],
    );
  }
}
// Container(
//   padding: const EdgeInsets.only(top: 35, right: 20),
//   margin: screenWidth < 1000 ? const EdgeInsets.only(right: 35) : const EdgeInsets.all(0),
//   width: screenWidth >= 1000 ? 250 : 220,
//   child: TextField(
//     decoration: InputDecoration(
//       contentPadding: const EdgeInsets.symmetric(horizontal: 16),
//       hintText: 'بحث عن الصنف',
//       hintStyle: TextStyle(
//         fontSize: 16,
//         color: MyColors.grey,
//         fontFamily: 'DIN',
//       ),
//       prefixIcon: Icon(
//         Icons.search,
//         color: MyColors.red,
//       ),
//       border: OutlineInputBorder(
//         borderSide: BorderSide(
//           color: MyColors.grey,
//           width: 1,
//         ),
//         borderRadius: BorderRadius.all(
//           Radius.circular(6),
//         ),
//       ),
//     ),
//   ),
// ),

/*Expanded(
          child: screenWidth >= 1000
              ? Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: ItemInfoColumn(),),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 4,
                      child: ItemImageColumn(),
                    ),
                  ],
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      ItemInfoColumn(),
                      const SizedBox(
                        height: 15,
                      ),
                      ItemImageColumn(),
                    ],
                  ),
                ),
        ),*/
