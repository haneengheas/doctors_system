// ignore_for_file: must_be_immutable

import 'package:doctors_system/constant/styles.dart';
import 'package:doctors_system/screens/charts/cloumn_chart.dart';
import 'package:doctors_system/screens/charts/pie_chart.dart';
import 'package:doctors_system/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagramScreen extends StatefulWidget {
  List<AcretinData>? acretin;
  List<AcretinData>? urea;
  List<BunData>? bun;

  DiagramScreen(
      {required this.acretin, required this.bun, required this.urea, Key? key})
      : super(key: key);

  @override
  _DiagramScreenState createState() => _DiagramScreenState();
}

class _DiagramScreenState extends State<DiagramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: blue,
                  )),
              Logo(width: 4, height: 4),
              const SizedBox(
                width: 50,
              )
            ],
          ),
          const Center(
              child: Text(
            "Result",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: blue),
          )),
          Stack(
            children: [
              Container(
                width: 400,
                height: 300,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: blue)),
                child: PieCharts(list: widget.acretin!),
              ),
              Positioned(
                left: 50,
                top: 2,
                child: Container(
                  padding:
                  const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Colors.white,
                  child: const Center(
                      child: Text(
                        "Creatinine",
                        style: TextStyle(
                            color: blue, fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          ),

          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                width: 400,
                height: 300,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: blue)),
                child: ColumnChart(list: widget.bun!),
              ),
              Positioned(
                left: 50,
                top: 2,
                child: Container(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Colors.white,
                  child: const Center(
                      child: Text(
                    "Bun",
                    style: TextStyle(
                        color: blue, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                width: 400,
                height: 300,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: blue)),
                child: PieCharts(list: widget.urea!),
              ),
              Positioned(
                left: 50,
                top: 2,
                child: Container(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Colors.white,
                  child: const Center(
                      child: Text(
                    "Urea",
                    style: TextStyle(
                        color: blue, fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
