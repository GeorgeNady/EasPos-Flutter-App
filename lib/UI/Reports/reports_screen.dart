import 'package:easpos/UI/MainWidgets/tab_item.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ReportsScreenTabs {
  Sales,
  Purchases,
  Tax,
  ItemSales,
  Users,
}

class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  ReportsScreenTabs currentTab = ReportsScreenTabs.Purchases;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(40),
          child: Row(
            children: [
              TabItem(
                text: 'المبيعات',
                function: () {
                  
                },
              ),
              const SizedBox(
                width: 16,
              ),
              TabItem(
                text: 'المشتريات',
                function: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              TabItem(
                text: 'الضريبة',
                function: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              TabItem(
                text: 'مبيعات الأصناف',
                function: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              TabItem(
                text: 'المستخدمين',
                function: () {},
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              right: screenWidth * 0.04,
              left: screenWidth * 0.04,
              bottom: screenWidth * 0.03,
            ),
            decoration: BoxDecoration(
              color: MyColors.white,
              boxShadow: [
                BoxShadow(
                  color: MyColors.grey.withOpacity(0.3),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
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
                        child: ListTile(
                          leading: Icon(
                            Icons.add_circle_outline,
                            color: MyColors.red,
                            size: 40,
                          ),
                          title: Text(
                            'المبيعات',
                            style: TextStyle(
                              fontFamily: 'DIN',
                              color: MyColors.black,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: MyColors.grey, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.grey.withOpacity(0.3),
                                blurRadius: 6,
                                spreadRadius: 2,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'تعديل',
                                  style: TextStyle(
                                    fontFamily: 'DIN',
                                    color: MyColors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Icon(
                                  Icons.done,
                                  color: MyColors.red,
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: MyColors.grey, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.grey.withOpacity(0.3),
                                blurRadius: 6,
                                spreadRadius: 2,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'حفظ',
                                  style: TextStyle(
                                    fontFamily: 'DIN',
                                    color: MyColors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Icon(
                                  Icons.save_outlined,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: MyColors.grey, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.grey.withOpacity(0.3),
                                blurRadius: 6,
                                spreadRadius: 2,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'طباعة',
                                  style: TextStyle(
                                    fontFamily: 'DIN',
                                    color: MyColors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Icon(
                                  Icons.print_outlined,
                                  color: MyColors.green,
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
