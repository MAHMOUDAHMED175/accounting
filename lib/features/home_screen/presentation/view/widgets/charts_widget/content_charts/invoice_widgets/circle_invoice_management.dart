// Package import
import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

/// Local imports
class DoughnutDefault extends StatefulWidget {
  const DoughnutDefault({super.key});

  @override
  State<DoughnutDefault> createState() => _DoughnutDefaultState();
}

class _DoughnutDefaultState extends State<DoughnutDefault> {
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    _tooltip = TooltipBehavior(enable: true, format: 'point.x : point.y%');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildDefaultDoughnutChart();
  }

  /// Return the circular chart with default doughnut series.
  SfCircularChart _buildDefaultDoughnutChart() {
    return SfCircularChart(
      title: ChartTitle(text: 'ملخص المدفوعات(SAR)'),
      legend: const Legend(
          isVisible:   true),
      series: _getDefaultDoughnutSeries(),
      tooltipBehavior: _tooltip,
    );
  }

  /// Returns the doughnut series which need to be render.
  List<DoughnutSeries<ChartSampleData, String>> _getDefaultDoughnutSeries() {
    return <DoughnutSeries<ChartSampleData, String>>[
      DoughnutSeries<ChartSampleData, String>(
        radius: '80%',
        explode: true,
        explodeOffset: '10%',
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'مدفوعه', y: 75, text: '75%'),
          ChartSampleData(x: 'غير مدفوعه', y: 25, text: '25%'),
        ],
        xValueMapper: (ChartSampleData data, _) => data.x as String,
        yValueMapper: (ChartSampleData data, _) => data.y,
        dataLabelMapper: (ChartSampleData data, _) => data.text,
        dataLabelSettings: const DataLabelSettings(isVisible: true),
        pointColorMapper: (ChartSampleData data, _) {
          // قم بتعيين الألوان هنا بناءً على القيمة (مثلاً، 'مدفوعه' و 'غير مدفوعه')
          if (data.x == 'مدفوعه') {
            return Colors.green[500]; // لون مدفوعه
          } else if (data.x == 'غير مدفوعه') {
            return Colors.red[300]; // لون غير مدفوعه
          } else {
            return Colors.blue; // لون افتراضي لأي قيمة أخرى إذا كان لديك
          }
        },
      )
    ];
  }

}

class ChartSampleData{

  ChartSampleData({required this.x,required this.y,required this.text});

  String x;
  double y;
  String text;
}