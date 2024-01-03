import 'dart:developer';

import 'package:dash_board/view/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TotalStudentCircleGraph extends StatefulWidget {
  final double maleCount;
  final double femaleCount;
  const TotalStudentCircleGraph(
      {super.key, required this.maleCount, required this.femaleCount});

  @override
  State<TotalStudentCircleGraph> createState() =>
      _TotalStudentCircleGraphState();
}

class _TotalStudentCircleGraphState extends State<TotalStudentCircleGraph> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    data = [
      _ChartData(
          'Male', widget.maleCount, const Color.fromARGB(255, 255, 166, 1)),
      _ChartData(
          'Female', widget.femaleCount, const Color.fromARGB(255, 15, 51, 255)),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log("<<<<<<<<<<<<<<<< ${widget.femaleCount}");
    return SfCircularChart(tooltipBehavior: _tooltip, series: [
      DoughnutSeries<_ChartData, String>(
          innerRadius: '70%',
          strokeColor: cWhite,
          strokeWidth: 2,
          dataLabelSettings: const DataLabelSettings(

              // Renders the data label
              isVisible: true),
          dataSource: data,
          xValueMapper: (_ChartData data, _) => data.x,
          yValueMapper: (_ChartData data, _) => data.y,
          pointColorMapper: (data, index) => data.color,
          name: 'Students')
    ]);
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);
  final Color color;
  final String x;
  final double y;
}
