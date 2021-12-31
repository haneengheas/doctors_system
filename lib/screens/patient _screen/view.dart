// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:doctors_system/constant/styles.dart';
import 'package:doctors_system/screens/charts/cloumn_chart.dart';
import 'package:doctors_system/screens/charts/pie_chart.dart';
import 'package:doctors_system/screens/diagram/view.dart';
import 'package:doctors_system/screens/patient_details_screen/view.dart';
import 'package:doctors_system/widgets/logo.dart';
import 'package:flutter/material.dart';

class PatientScreen extends StatefulWidget {
  String? name, image;
  List? patient;
  List<AcretinData>? acretin;
  List<AcretinData>? urea;
  List<BunData>? bun;

  PatientScreen(
      {required this.name,
      required this.image,
      required this.patient,
      required this.acretin,
      required this.bun,
      required this.urea,
      Key? key})
      : super(key: key);

  @override
  _PatientScreenState createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: blue,
                    )),
                Logo(width: 4, height: 4.2),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/' + widget.image!),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              widget.name!,
              style: const TextStyle(
                  color: blue, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DiagramScreen(
                              acretin: widget.acretin!,
                              bun: widget.bun!,
                              urea: widget.urea!,
                            )));
              },
              child: Container(
                alignment: Alignment.center,
                width: sizeFromWidth(context, 1.2),
                height: 80,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Diagram',
                  style: TextStyle(
                      color: white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: sizeFromHeight(context, 1.7),
            child: ListView.builder(
                itemCount: widget.patient!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PatientDetailsScreen(
                                    image: widget.image!,
                                    name: widget.name!,
                                    details: widget.patient![index],
                                  )));
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: sizeFromWidth(context, 1),
                      height: 80,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: blue,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 1),
                                blurRadius: 5,
                                spreadRadius: 3)
                          ],
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        'week ' + weeks[index],
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(
      //     Icons.add,
      //     size: 35,
      //   ),
      //   backgroundColor: blue,
      // ),
    );
  }
}

List weeks = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
];
List<List> status = [
  ['30 years', '1', '20/10/2020', '30/11/2020', 'stable'],
  ['30 years', '1', '20/10/2020', '30/11/2020', 'stable'],
  ['30 years', '2', '9/1/2021', '15/1/2021', 'stable'],
  ['30 years', '2', '20/2/2021', '30/2/2021', 'stable'],
  [
    '30 years',
    '2',
    '15/6/2021',
    '30/6/2021',
    'stable',
  ],
];
