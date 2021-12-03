import 'package:easpos/Models/charts_model.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'custom_bar_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
final series2 = [
  charts.Series(
    id: 'SalesBerMonth',
    domainFn: (SalesPerMonth sales, _) => sales.month,
    measureFn: (SalesPerMonth sales, _) => sales.sales,
    colorFn: (SalesPerMonth sales, _) =>
        charts.ColorUtil.fromDartColor(MyColors.purple),
    data: [
      SalesPerMonth(month: 'Jan', sales: 5000),
      SalesPerMonth(month: 'Feb', sales: 4200),
      SalesPerMonth(month: 'Mar', sales: 2300),
      SalesPerMonth(month: 'Apr', sales: 4500),
      SalesPerMonth(month: 'May', sales: 3800),
      SalesPerMonth(month: 'Jun', sales: 3600),
      SalesPerMonth(month: 'Jul', sales: 4100),
      SalesPerMonth(month: 'Aug', sales: 4700),
      SalesPerMonth(month: 'Sep', sales: 4000),
      SalesPerMonth(month: 'Oct', sales: 3500),
      SalesPerMonth(month: 'Nov', sales: 4800),
      SalesPerMonth(month: 'Dec', sales: 4600),
    ],
  )
];

class MonthsSellingContainer extends StatefulWidget {
  @override
  _MonthsSellingContainerState createState() => _MonthsSellingContainerState();
}

class _MonthsSellingContainerState extends State<MonthsSellingContainer> {
  String valueChoose = 'Last Year';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight < 1000 ? screenHeight * 0.5 : screenHeight * 0.35 ,
      width: screenWidth < 1200 ? screenWidth - 300 : 500,
      padding: const EdgeInsets.all(16),
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            textDirection: TextDirection.ltr,
            children: [
              Column(
                children: [
                  Text(
                    'مبيعات الشهور',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Avg. \$5356',
                    style: TextStyle(
                        color: MyColors.purple, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              DropdownButton(
                value: valueChoose,
                style: TextStyle(
                  color: MyColors.black,
                  fontSize: 14,
                ),
                onChanged: (newValue){
                  setState(() {
                    valueChoose = newValue;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 'Last Year',
                    child: Text('Last Year'),
                  ),
                  DropdownMenuItem(
                    value: '2019',
                    child: Text('2019'),
                  ),
                  DropdownMenuItem(
                    value: '2018',
                    child: Text('2018'),
                  ),
                  DropdownMenuItem(
                    value: '2017',
                    child: Text('2017'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50,),
          Container(
            height: 200,
            child: CustomBarChart(
              seriesList: series2,
              animate: true,
            ),
          ),
        ],
      ),
    );
  }
}
