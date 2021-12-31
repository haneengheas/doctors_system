// ignore_for_file: prefer_const_constructors

import 'package:doctors_system/constant/styles.dart';
import 'package:doctors_system/screens/add_patient/view.dart';
import 'package:doctors_system/screens/patient%20_screen/view.dart';
import 'package:doctors_system/widgets/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(color: blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(color: blue),
                    ),
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(color: Colors.black26, fontSize: 25),
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black26,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15)),
              ),
            ),
            SizedBox(
              height: sizeFromHeight(context, 1.1),
              child: ListView.builder(
                  itemCount: patient.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PatientScreen(
                                      name: patient[index][4],
                                      image: patient[index][5],
                                      patient: patient[index][6],
                                      acretin: patient[index][7],
                                      bun: patient[index][8],
                                      urea: patient[index][9],
                                    )));
                      },
                      child: Container(
                        height: 120,
                        width: sizeFromWidth(context, 1),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: blue,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                patient[index][0],
                                SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: patient[index][1]),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                patient[index][3],
                                SizedBox(
                                  height: 30,
                                  width: 50,
                                  child: Icon(
                                    Icons.dangerous,
                                    color: colors[index],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddPatient()));
        },
        child: const Icon(
          Icons.add,
          size: 35,
        ),
        backgroundColor: blue,
      ),
    );
  }
}

