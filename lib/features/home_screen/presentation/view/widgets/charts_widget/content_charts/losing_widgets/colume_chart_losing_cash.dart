/// Package import
import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/core/utils/styles_manager.dart';
import 'package:accounting/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

/// Local imports
class ColumChartLosingCash extends StatefulWidget {
  const ColumChartLosingCash({super.key});

  @override
  State<ColumChartLosingCash> createState() => _ColumChartLosingCashState();
}

class _ColumChartLosingCashState extends State<ColumChartLosingCash> {
  late double padding;

  @override
  void initState() {
    padding = 0;
    chartData = <ChartSampleDataLosing>[
      ChartSampleDataLosing(x: 'Jan 2023', y: 5, secondSeriesYValue: 5),
      ChartSampleDataLosing(x: 'Feb 2023', y: 10, secondSeriesYValue: 10),
      ChartSampleDataLosing(x: 'March 2023', y: 15, secondSeriesYValue: 15),
      ChartSampleDataLosing(x: 'April 2023', y: 20, secondSeriesYValue: 20),
      ChartSampleDataLosing(x: 'May 2023', y: 25, secondSeriesYValue: 25),
      ChartSampleDataLosing(x: 'June 2023', y: 30, secondSeriesYValue: 30)
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: AppPadding.p16),
          child: Row(
            children: [
              const Text("الربح"),
              const SizedBox(width:AppSize.s4,),
              Stack(
                alignment: Alignment.center,
                children:[
                  Container(
                    width: AppSize.s8,
                    height: AppSize.s8,
                    decoration: BoxDecoration(
                        color: ColorManager.blue,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  Container(
                  height: AppSize.s4,
                  width: AppSize.s28,
                  color: ColorManager.blue,
                ),]
              ),
              const SizedBox(width: AppSize.s20,),
              const Text("المصروفات"),
              const SizedBox(width: AppSize.s12,),

              Container(
                height: AppSize.s20,
                width: AppSize.s28,
                color: ColorManager.red,
              ),
              const SizedBox(width: AppSize.s20,),
              const Text("سندات القبض"),
              const SizedBox(width: AppSize.s12,),
              Container(
                height: AppSize.s20,
                width: AppSize.s28,
                color: ColorManager.green,
              ),
            ],
          ),
        ),
        Expanded(child: _buildDefaultAnimationChart()),
      ],
    );
  }

  List<ChartSampleDataLosing>? chartData;

  /// Returns the cartesian chart with default serie animation.
  Column _buildDefaultAnimationChart() {
    return Column(children: <Widget>[
      Expanded(
          child: SfCartesianChart(
        title: ChartTitle(
            text: 'سندات القبض والمصروفات',
            textStyle: getLightStyle(color: ColorManager.grey)),
        legend: const Legend(isVisible: true),
        plotAreaBorderWidth: 0,
        primaryXAxis: CategoryAxis(
            majorGridLines: const MajorGridLines(width: 0),
            edgeLabelPlacement: EdgeLabelPlacement.shift),
        primaryYAxis: NumericAxis(
            labelFormat: '{value}K',
            minimum: 0,
            interval: 5,
            maximum: 30,
            majorGridLines: const MajorGridLines(width: 1)),
        // axes: <ChartAxis>[
        //   NumericAxis(
        //       numberFormat: NumberFormat.compact(),
        //       majorGridLines: const MajorGridLines(width: 0),
        //       opposedPosition: true,
        //       name: 'yAxis1',
        //       interval: 1000,
        //       minimum: 0,
        //       maximum: 7000)
        // ],
        series: _getDefaultAnimationSeries(),
        tooltipBehavior: TooltipBehavior(enable: true),
      )),
    ]);
  }

  /// Returns the list of chart which need to render on the cartesian chart.
  List<ChartSeries<ChartSampleDataLosing, String>>
      _getDefaultAnimationSeries() {
    return <ChartSeries<ChartSampleDataLosing, String>>[
      ColumnSeries<ChartSampleDataLosing, String>(
          animationDuration: 2000,
          width: 0.2,
          // Adjust the column width (0.8 is the default value)
          color: ColorManager.green,
          dataSource: chartData!,
          xValueMapper: (ChartSampleDataLosing sales, _) => sales.x as String,
          yValueMapper: (ChartSampleDataLosing sales, _) => sales.y,
          name: 'سندات القبض'),
      LineSeries<ChartSampleDataLosing, String>(
          animationDuration: 4500,
          dataSource: chartData!,
          width: 2,
          color: ColorManager.blue,
          xValueMapper: (ChartSampleDataLosing sales, _) => sales.x as String,
          yValueMapper: (ChartSampleDataLosing sales, _) =>
              sales.secondSeriesYValue,
          markerSettings: const MarkerSettings(isVisible: true),
          name: 'الربح')
    ];
  }

  @override
  void dispose() {
    chartData!.clear();
    super.dispose();
  }
}

class ChartSampleDataLosing {
  //      ChartSampleDataLosing(x: 'Jan', y: 45, secondSeriesYValue: 1000),

  ChartSampleDataLosing(
      {required this.x, required this.y, required this.secondSeriesYValue});

  final String x;
  final num y;
  final num secondSeriesYValue;
}
