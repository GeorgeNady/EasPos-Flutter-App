import 'package:easpos/Models/charts_model.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'donut_pie_chart.dart';

final series = [
  charts.Series(
    id: 'Sales',
    domainFn: (BestSelling sales, _) => sales.name,
    measureFn: (BestSelling sales, _) => sales.amount,
    colorFn: (BestSelling sales, _) =>
        charts.ColorUtil.fromDartColor(sales.color),
    data: [
      BestSelling(name: 'شاورما دجاج', amount: 40000, color: MyColors.blue),
      BestSelling(name: 'بروستد', amount: 90000, color: MyColors.red),
      BestSelling(name: 'ورق عنب', amount: 85000, color: MyColors.yellow),
      BestSelling(name: 'كوكتيل سبيشل', amount: 60000, color: MyColors.purple),
    ],
  )
];

class BestSellingContainer extends StatefulWidget {
  @override
  _BestSellingContainerState createState() => _BestSellingContainerState();
}

class _BestSellingContainerState extends State<BestSellingContainer> {
  String valueChoose = 'Europe';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight < 1000 ? screenHeight * 0.5 : screenHeight * 0.35 ,
      width: screenWidth < 1200 ? screenWidth - 300 : 400,
      padding: EdgeInsets.all(16),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.ltr,
            children: [
              Text(
                'الأفضل مبيعاً',
                style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold),
              ),
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
                    value: 'Europe',
                    child: Text('Europe'),
                  ),
                  DropdownMenuItem(
                    value: 'Asia',
                    child: Text('Asia'),
                  ),
                  DropdownMenuItem(
                    value: 'America',
                    child: Text('America'),
                  ),
                  DropdownMenuItem(
                    value: 'Africa',
                    child: Text('Africa'),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: DonutPieChart(
              seriesList: series,
              animate: true,
            ),
          ),
        ],
      ),
    );
  }
}
