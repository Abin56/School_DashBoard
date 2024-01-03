import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StudentsAttendenceCircleGraph extends StatefulWidget {
  const StudentsAttendenceCircleGraph(
      {super.key,
      required this.present,
      required this.absent,
      required this.total});

  final int present;
  final int absent;
  final int total;

  @override
  State<StudentsAttendenceCircleGraph> createState() =>
      _StudentsAttendenceCircleGraphState();
}

class _StudentsAttendenceCircleGraphState
    extends State<StudentsAttendenceCircleGraph> {
  @override
  Widget build(BuildContext context) {
    final double percentage = widget.present * (100 / widget.total);
    final List<ChartData> chartData = [
      ChartData('Present', widget.present.toDouble(),
          const Color.fromARGB(255, 65, 125, 252)),
      ChartData('Absent', widget.absent.toDouble(),
          const Color.fromARGB(255, 255, 0, 0))

      // ChartData('Jack', 34, const Color.fromRGBO(228, 0, 124, 1)),
      // ChartData('Others', 52, const Color.fromRGBO(255, 189, 57, 1))
    ];
    return SfCircularChart(
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(
            height:
                '80%', // Setting height and width for the circular chart annotation
            width: '80%',
            widget: PhysicalModel(
                shape: BoxShape.circle,
                elevation: 10,
                shadowColor: Colors.black,
                color: const Color.fromRGBO(230, 230, 230, 1),
                child: Container())),
        CircularChartAnnotation(
            widget: Text(percentage.roundToDouble().toString(),
                style: const TextStyle(color: Colors.black, fontSize: 25)))
      ],
      series: <DoughnutSeries<ChartData, String>>[
        DoughnutSeries<ChartData, String>(
          innerRadius: '70%',
          dataSource: chartData,
          animationDuration: 1,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          pointColorMapper: (data, index) => data.color,
        )
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
