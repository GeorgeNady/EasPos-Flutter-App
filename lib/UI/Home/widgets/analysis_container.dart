import 'package:easpos/Models/charts_model.dart';
import 'package:easpos/UI/Home/widgets/spark_bar_chart.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

final series = [
  charts.Series(
    id: 'SalesPerDay',
    domainFn: (SalesPerDay sales, _) => sales.day,
    measureFn: (SalesPerDay sales, _) => sales.sales,
    data: [
      SalesPerDay(day: 'Sa', sales: 39000),
      SalesPerDay(day: 'Fr', sales: 33000),
      SalesPerDay(day: 'Th', sales: 41000),
      SalesPerDay(day: 'We', sales: 35000),
      SalesPerDay(day: 'Tu', sales: 49000),
      SalesPerDay(day: 'Mo', sales: 32000),
      SalesPerDay(day: 'Su', sales: 40000),
    ],
  ),
];

class AnalysisContainer extends StatelessWidget {
  final String title;
  final int amount;
  final double change;
  final bool changeUp;
  final Color chartsColor;

  const AnalysisContainer(
      {Key key,
      @required this.title,
      @required this.amount,
      @required this.change,
      @required this.changeUp,
      @required this.chartsColor,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(12),
      height: screenHeight * 0.2,
      width: 300,
      color: MyColors.white,
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 50,
                child: SparkBarChart(
                  series: series,
                  color: chartsColor,
                  animate: false,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '$amount',
                  style: TextStyle(
                      color: MyColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$change',
                      style: TextStyle(
                        color: changeUp ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    changeUp
                        ? Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                          )
                        : Icon(
                            Icons.arrow_downward,
                            color: Colors.red,
                          ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
