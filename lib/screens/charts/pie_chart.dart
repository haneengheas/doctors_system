// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieCharts extends StatefulWidget {
  List<AcretinData>? list ;
   PieCharts({ required this.list ,Key? key}) : super(key: key);

  @override
  _PieChartsState createState() => _PieChartsState();
}

class _PieChartsState extends State<PieCharts> {
  late List<AcretinData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 250,
          child: SfCircularChart(
            // palette: [
            //   Colors.red,
            //   Colors.green
            // ],
            legend: Legend(
                isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
            tooltipBehavior: _tooltipBehavior,
            series: [
              PieSeries<AcretinData, String>(
                dataSource: _chartData,
                xValueMapper: (AcretinData data, _) => data.week,
                yValueMapper: (AcretinData data, _) => data.acretin,
                dataLabelSettings: const DataLabelSettings(
                  isVisible: true,
                ),
                enableTooltip: true,
              )
            ],
          ),
        ),
      ),
    );
  }

  List<AcretinData> getChartData() {
    return widget.list!;
  }
}

class AcretinData {
  final String week;
  final double acretin;

  AcretinData(
    this.week,
    this.acretin,
  );
}
