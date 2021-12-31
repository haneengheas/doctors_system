// ignore_for_file: must_be_immutable

import 'package:doctors_system/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnChart extends StatefulWidget {
  List  <BunData> ? list;
   ColumnChart({
    required this.list,
    Key? key}) : super(key: key);

  @override
  _ColumnChartState createState() => _ColumnChartState();
}

class _ColumnChartState extends State<ColumnChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCartesianChart(
        primaryXAxis: CategoryAxis(
            title: AxisTitle(
                text: "ALL WEEKS",
                textStyle: const TextStyle(
                    fontSize: 15,
                    color: blue,
                    // fontWeight: FontWeight.bold
                ))),
        primaryYAxis: CategoryAxis(
            title: AxisTitle(
                text: "RESULTS",
                textStyle: const TextStyle(
                    fontSize: 15,
                    color: blue,
                    // fontWeight: FontWeight.bold
                ))),
        series: <ChartSeries>[
          ColumnSeries<BunData, String>(
            color: Colors.indigo,
            dataSource: getChartData(),
            xValueMapper: (BunData data, _) => data.week,
            yValueMapper: (BunData data, _) => data.ratio,
            borderRadius: BorderRadius.circular(5),
            isVisible: true,
            width: .5,


          )
        ],
      ),
    );
  }

    List<BunData> getChartData() {
      return widget.list!;
    }

}

class BunData {
  String week;
  double ratio;


  BunData(this.week, this.ratio);
}


