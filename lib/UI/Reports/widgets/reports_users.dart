import 'package:easpos/UI/MainWidgets/custom_elevated_button.dart';
import 'package:easpos/UI/MainWidgets/custom_white_container.dart';
import '../../MainWidgets/title_list_tile.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';

class ReportsUsers extends StatelessWidget {
  final outlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: MyColors.grey, width: 2),
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;
    return CustomWhiteContainer(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenWidth * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: MyColors.red,
                  width: 2,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TitleListTile(
                    title: 'كشف المستخدمين',
                    icon: Icons.add_circle_outline,
                  ),
                ),
                Spacer(),
                Expanded(
                  child: CustomElevatedButton(
                    icon: Icon(Icons.save_outlined, color: MyColors.blue, size: 35,),
                    text: 'حفظ',
                    textColor: MyColors.black,
                    function: () {},
                    border: Border.all(
                        width: 2,
                        color: MyColors.grey
                    ),
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    icon: Icon(Icons.save_outlined, color: MyColors.blue, size: 35,),
                    text: 'طباعة',
                    textColor: MyColors.black,
                    function: () {},
                    border: Border.all(
                        width: 2,
                        color: MyColors.grey
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: DropdownButtonFormField(
                          hint: Text('اسم الفرع'),
                          //value: '1',
                          items: [
                            DropdownMenuItem(
                              child: Text('1'),
                              value: '1',
                            ),
                            DropdownMenuItem(
                              child: Text('2'),
                              value: '2',
                            ),
                            DropdownMenuItem(
                              child: Text('3'),
                              value: '3',
                            ),
                          ],

                          decoration: InputDecoration(
                            enabledBorder: outlineBorder,
                            focusedBorder: outlineBorder,
                            errorBorder: outlineBorder,
                            focusedErrorBorder: outlineBorder,
                          ),
                          // borderRadius: BorderRad,
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 4,
                        child: ListTile(
                          trailing: Icon(
                            Icons.search,
                            size: 35,
                            color: MyColors.red,
                          ),
                          title: Text(
                            'المستخدمين',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'DIN',
                              color: MyColors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
