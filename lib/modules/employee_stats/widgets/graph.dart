import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomChart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  CustomChart({Key? key}) : super(key: key);

  @override
  _CustomChartState createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('M', 8),
      _ChartData('T', 8),
      _ChartData('W', 6),
      _ChartData('T', 8),
      _ChartData('F', 4),
      _ChartData('S', 8)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      
        primaryXAxis: const CategoryAxis(),
        primaryYAxis: const NumericAxis(minimum: 0, maximum: 10, interval: 2),
        tooltipBehavior: _tooltip,
        series: <CartesianSeries<_ChartData, String>>[

          ColumnSeries<_ChartData, String>(
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
              name: 'Working Hours',
              color: ColorConstants.primaryColor)
        ]);
  }
}

class _ChartData {
  _ChartData(this.x, this.y);
  final String x;
  final double y;
}
