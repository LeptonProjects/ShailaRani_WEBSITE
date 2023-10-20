// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';

class BlueContainerWidget extends StatelessWidget {
  String title;
  double fontSize;
  FontWeight?fontWeight;
  Color color;
  double width;
  

   BlueContainerWidget({
    required this.title,
    required this.fontSize,
    required this.color,
    required this.width,
    this.fontWeight,
    super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
        height: 30,
        width: width,
        decoration:  BoxDecoration(
          color: color,
        ),
        child: Center(
          child: GooglePoppinsWidgets(
              text: title,
              fontsize: fontSize,
              color: cWhite,
              fontWeight: fontWeight),
        ),
      );
  }
}