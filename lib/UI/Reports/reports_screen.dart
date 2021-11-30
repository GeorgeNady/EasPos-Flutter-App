import 'package:easpos/UI/MainWidgets/tab_item.dart';
import 'package:easpos/UI/Reports/widgets/reports_tab.dart';
import 'package:easpos/UI/Reports/widgets/reports_users.dart';
import 'package:easpos/UI/Reports/widgets/reprots_items_sales.dart';
import 'package:easpos/Utiles/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ReportsTabs {
  Sales,
  Purchases,
  Tax,
  ItemsSales,
  Users,
}

class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  ReportsTabs _currentTab = ReportsTabs.Sales;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TabItem(
                    text: 'المبيعات',
                    function: () {
                     setState(() {
                       _currentTab = ReportsTabs.Sales;
                     });
                    },
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: TabItem(
                    text: 'المشتريات',
                    function: () {
                     setState(() {
                       _currentTab = ReportsTabs.Purchases;
                     });
                    },
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: TabItem(
                    text: 'الضرائب',
                    function: () {
                      setState(() {
                        _currentTab = ReportsTabs.Tax;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: TabItem(
                    text: 'مبيعات الأصناف',
                    function: () {
                      setState(() {
                        _currentTab = ReportsTabs.ItemsSales;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: TabItem(
                    text: 'المستخدمين',
                    function: () {
                      setState(() {
                        _currentTab = ReportsTabs.Users;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: _buildReportsBody(_currentTab),
        ),
      ],
    );
  }

  Widget _buildReportsBody(ReportsTabs tab){
    if(tab == ReportsTabs.ItemsSales)
      return ReportsItemsSales();
    else if(tab == ReportsTabs.Users)
      return ReportsUsers();
    else
      return ReportsTab(currentTab: _currentTab);
  }
}
