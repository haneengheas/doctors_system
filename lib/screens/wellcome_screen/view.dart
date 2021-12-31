import 'package:doctors_system/constant/styles.dart';
import 'package:doctors_system/screens/signin_screen/view.dart';
import 'package:doctors_system/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  _WellcomeScreenState createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Logo(
            height: 2.7,
            width: 2.5,
          ),
          Container(
            height: sizeFromHeight(context, 2.5),
            width: sizeFromWidth(context, 1.1),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/doctor.jpg'), fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Your All Medical History In One Place',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const SingInScreen()));
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  alignment: Alignment.center,
                  height: 45,
                  width: sizeFromWidth(context, 2),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: blue, width: 2),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  bottom: 9,
                  child: Container(
                    height: 50,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: blue, shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {

                        },
                        icon: const Icon(
                          Icons.arrow_forward_outlined,
                          color: white,
                          size: 35,
                        )),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
