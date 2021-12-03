import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DonutPieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DonutPieChart({@required this.seriesList, @required this.animate});

  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
      animationDuration: Duration(milliseconds: 500),
      // Configure the width of the pie slices to 60px. The remaining space in
      // the chart will be left as a hole in the center.
      defaultRenderer: new charts.ArcRendererConfig(arcWidth: 60),
      behaviors: [
        charts.DatumLegend(
          position: charts.BehaviorPosition.start,
          desiredMaxColumns: 1,
          cellPadding: EdgeInsets.only(right: 4, bottom: 4),
          entryTextStyle: charts.TextStyleSpec(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
