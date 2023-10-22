import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: cBlue),
        height: 40,
        width: 140,
        child: Center(
          child: GooglePoppinsWidgets(
            text: 'Create Employee',
            fontsize: 12,
            color: cWhite,
          ),
        ),
      ),
    );
  }
}
