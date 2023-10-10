import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';

class BackButtonContainerWidget extends StatelessWidget {
  const BackButtonContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: const BoxDecoration(
          color: themeColorBlue,
        ),
        child: Center(
          child: GooglePoppinsWidgets(
              text: 'BACK',
              color: cWhite,
              fontsize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
