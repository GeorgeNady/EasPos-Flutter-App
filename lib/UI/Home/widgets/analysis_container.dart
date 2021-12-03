import 'package:easpos/UI/Home/widgets/spark_bar_chart.dart';
import 'package:easpos/Utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:easpos/Models/charts_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:numeral/numeral.dart';

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

  const AnalysisContainer({
    Key key,
    @required this.title,
    @required this.amount,
    @required this.change,
    @required this.changeUp,
    @required this.chartsColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(12),
      height: screenHeight * 0.2,
      width: 300,
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
                  animate: true,
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
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DIN',
                  ),
                ),
                Spacer(),
                Text(
                  '${Numeral(amount).value()}',
                  style: TextStyle(
                    color: MyColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$change',
                      style: TextStyle(
                        color: changeUp ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSansPro',
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
