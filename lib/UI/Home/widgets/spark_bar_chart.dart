import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SparkBarChart extends StatelessWidget {
  final bool animate;
  final List series;
  final Color color;

  SparkBarChart({
    @required this.series,
    @required this.animate,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [color, color.withOpacity(0.8)],
          stops: [
            0.0,
            0.5,
          ],
        ).createShader(bounds);
      },
      blendMode: BlendMode.srcIn,
      child: charts.BarChart(
        series,
        animate: animate,

        animationDuration: Duration(seconds: 1),

        /// Assign a custom style for the measure axis.
        ///
        /// The NoneRenderSpec only draws an axis line (and even that can be hidden
        /// with showAxisLine=false).
        primaryMeasureAxis:
            charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),

        /// This is an OrdinalAxisSpec to match up with BarChart's default
        /// ordinal domain axis (use NumericAxisSpec or DateTimeAxisSpec for
        /// other charts).
        domainAxis: charts.OrdinalAxisSpec(
            // Make sure that we draw the domain axis line.
            showAxisLine: false,
            // But don't draw anything else.
            renderSpec: new charts.NoneRenderSpec()),

        // With a spark chart we likely don't want large chart margins.
        // 1px is the smallest we can make each margin.
        layoutConfig: charts.LayoutConfig(
            leftMarginSpec: charts.MarginSpec.fixedPixel(0),
            topMarginSpec: charts.MarginSpec.fixedPixel(0),
            rightMarginSpec: charts.MarginSpec.fixedPixel(0),
            bottomMarginSpec: charts.MarginSpec.fixedPixel(0)),
      ),
    );
  }
}
