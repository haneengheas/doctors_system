import 'dart:async';

import 'package:doctors_system/constant/styles.dart';
import 'package:doctors_system/screens/wellcome_screen/view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const WellcomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: sizeFromWidth(context, 2),
          height: sizeFromHeight(context, 2),
          decoration: const BoxDecoration(
            color: white,
            shape: BoxShape.circle,
            // border: Border.all(color: Colors.grey, width: .5),
            // boxShadow: const [BoxShadow(color: blue, blurRadius: 3)]
          ),
          child: const CircleAvatar(
              backgroundColor: white,
              radius: 50,
              child: Image(
                image: AssetImage(
                  'assets/clinic.png',
                ),
                height: 170,
              )),
        ),
      ),
    );
  }
}
