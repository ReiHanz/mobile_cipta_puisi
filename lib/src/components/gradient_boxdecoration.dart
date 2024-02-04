import 'package:flutter/material.dart';
import 'package:mobile_cipta_puisi/src/config/themes/colors.dart';

const Decoration gradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [purpleColor, blueColor],
  ),
);
