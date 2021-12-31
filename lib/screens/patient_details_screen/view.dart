// ignore_for_file: must_be_immutable

import 'package:doctors_system/constant/styles.dart';
import 'package:doctors_system/widgets/logo.dart';
import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatefulWidget {
  List? details;
  String? name, image;

  PatientDetailsScreen(
      {required this.details,
      required this.image,
      required this.name,
      Key? key})
      : super(key: key);

  @override
  _PatientDetailsScreenState createState() => _PatientDetailsScreenState();
}

class _PatientDetailsScreenState extends State<PatientDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    backgroundImage: AssetImage('assets/'+widget.image!),
                  ),
                ],
              ),
            ),
             Center(
              child: Text(
               widget.name!,
                style:const  TextStyle(
                    color: blue, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: sizeFromWidth(context, 1),
              height: sizeFromHeight(context, 1.3),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: blue, width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Age: ' + widget.details![0],
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Gender: ' + widget.details![1],
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'First prescription:' + widget.details![2],
                      style: const TextStyle(fontSize: 26.5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'blood analysis: ' + widget.details![3],
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Creatinine ratio: ' + widget.details![4],
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Bun ratio: ' + widget.details![5],
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Urea ratio: ' + widget.details![6],
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'status: ' + widget.details![7],
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
