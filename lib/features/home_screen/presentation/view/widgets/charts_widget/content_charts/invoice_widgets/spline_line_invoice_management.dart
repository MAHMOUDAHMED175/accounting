import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

/// Local import
class SplineArea extends StatefulWidget {
  const SplineArea({super.key});

  @override
  State<SplineArea> createState() => _SplineAreaState();
}

class _SplineAreaState extends State<SplineArea> {

  @override
  Widget build(BuildContext context) {
    return _buildSplineAreaChart();
  }

  /// Returns the cartesian spline are chart.
  SfCartesianChart _buildSplineAreaChart() {
    return SfCartesianChart(
      legend: const Legend(isVisible: true, opacity: 0.7),
      title: ChartTitle(text: 'تقرير شهرى مختصر للفواتير(SAR)'),
      plotAreaBorderWidth: 1,
      primaryXAxis: CategoryAxis(), // Use CategoryAxis for non-numeric x-values
      primaryYAxis: NumericAxis(
          labelFormat: '{value}K',
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0)),
      series: _getSplieAreaSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<_SplineAreaData>? chartData;

  @override
  void initState() {
    chartData = <_SplineAreaData>[
      //      ChartSampleDataLosing(x: 'Jan 2023', y: 15, secondSeriesYValue: 15),
      //       ChartSampleDataLosing(x: 'Feb 2023', y: 10, secondSeriesYValue: 10),
      //       ChartSampleDataLosing(x: 'March 2023', y: 5, secondSeriesYValue: 5),
      //       ChartSampleDataLosing(x: 'April 2023', y: 20, secondSeriesYValue: 20),
      //       ChartSampleDataLosing(x: 'May 2023', y: 10, secondSeriesYValue: 10),
      //       ChartSampleDataLosing(x: 'June 2023', y: 15, secondSeriesYValue: 15)

      _SplineAreaData('Jan 2023',    14,  10,  7, 3),
      _SplineAreaData('May 2023',    20,  18, 9,  6),
      _SplineAreaData('March 2023',  30,25 ,  21,9  ),
      _SplineAreaData('April 2023',  40, 29, 23, 12 ),
      _SplineAreaData('Feb 2023',  50,30 , 26, 15 ),

    ];
    super.initState();
  }

  /// Returns the list of chart series
  /// which need to render on the spline area chart.
  List<ChartSeries<_SplineAreaData, String>> _getSplieAreaSeries() {
    return <ChartSeries<_SplineAreaData, String>>[
      SplineAreaSeries<_SplineAreaData, String>(
        dataSource: chartData!,
        color:  Colors.deepPurpleAccent.withOpacity(0.3),
        borderColor: Colors.deepPurpleAccent,
        borderWidth: 2,
        name: 'مرتجع',
        xValueMapper: (_SplineAreaData sales, _) => sales.month ,
        yValueMapper: (_SplineAreaData sales, _) => sales.y1,
      ),
      SplineAreaSeries<_SplineAreaData, String>(
        dataSource: chartData!,
        borderColor: Colors.red,
        color:Colors.red.withOpacity(0.3),
        borderWidth: 2,
        name: 'غير مدفوعه',
        xValueMapper: (_SplineAreaData sales, _) => sales.month ,
        yValueMapper: (_SplineAreaData sales, _) => sales.y2,
      ),
      SplineAreaSeries<_SplineAreaData,String>(
        dataSource: chartData!,
        borderColor:Colors.green,
        color:Colors.green.withOpacity(0.3),
        borderWidth: 2,
        name: 'مدفوعه',
        xValueMapper: (_SplineAreaData sales, _) => sales.month ,
        yValueMapper: (_SplineAreaData sales, _) => sales.y3,
      ),
      SplineAreaSeries<_SplineAreaData, String>(
        dataSource: chartData!,
        borderColor: Colors.blue,
        color:Colors.blue.withOpacity(0.3),
        borderWidth: 2,
        name: 'الاجمالى',
        xValueMapper: (_SplineAreaData sales, _) => sales.month ,
        yValueMapper: (_SplineAreaData sales, _) => sales.y4,
      ),
    ];
  }

  @override
  void dispose() {
    chartData!.clear();
    super.dispose();
  }
}

/// Private class for storing the spline area chart datapoints.
class _SplineAreaData {
  _SplineAreaData(this.month, this.y1, this.y2, this.y3, this.y4);
  final String month;
  final double y1;
  final double y2;
  final double y3;
  final double y4;
}