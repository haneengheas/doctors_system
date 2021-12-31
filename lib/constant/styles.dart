import 'package:flutter/material.dart';
const Color white = Color(0xFFfafafa);
const Color blue = Color(0xFF2810BD);
const Color pink = Color(0xFFf7a6a2);
const Color purple = Color(0xFFab9ff3);

double sizeFromHeight(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery.of(context).size.height;
  fraction = (hasAppBar ? (screenHeight - AppBar().preferredSize.
  height -
      MediaQuery.of(context).padding.top)
      : screenHeight) /
      fraction;
  return fraction;
}

double sizeFromWidth(BuildContext context, double fraction) {
  return MediaQuery.of(context).size.width / fraction;
}
