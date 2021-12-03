import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CustomBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  CustomBarChart({@required this.seriesList, @required this.animate});

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      animationDuration: Duration(milliseconds: 500),


      domainAxis: charts.OrdinalAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(

            // Tick and Label styling here.
              labelStyle: charts.TextStyleSpec(
                  fontSize: 10, // size in Pts.
                  color: charts.ColorUtil.fromDartColor(Colors.grey)),

              // Change the line colors to match text color.
              lineStyle: charts.LineStyleSpec(
                  color: charts.ColorUtil.fromDartColor(Colors.grey)))),

      /// Assign a custom style for the measure axis.
      primaryMeasureAxis: new charts.NumericAxisSpec(
          renderSpec: new charts.GridlineRendererSpec(

            // Tick and Label styling here.
              labelStyle: charts.TextStyleSpec(
                  fontSize: 10, // size in Pts.
                  color: charts.ColorUtil.fromDartColor(Colors.grey)),

              // Change the line colors to match text color.
              lineStyle: charts.LineStyleSpec(
                  color: charts.ColorUtil.fromDartColor(Colors.grey)))),

    );



  }
}
