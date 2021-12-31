import 'package:doctors_system/constant/styles.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Logo extends StatefulWidget {
  double ? width , height;
   Logo({ required this.width, required this.height ,Key? key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        width: sizeFromWidth(context, widget.width!),
        height: sizeFromHeight(context, widget.height!),
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
    );
  }
}
