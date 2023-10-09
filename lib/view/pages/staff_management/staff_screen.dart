import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/widgets/back_button_widget.dart';

class StaffHomeScreen extends StatelessWidget {
  const StaffHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: cGrey.withOpacity(0.1),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: GooglePoppinsWidgets(
                          text: 'EMPLOYEES DETAILS',
                          fontsize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: cBlue),
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
                    )
                  ],
                ),
                const BackButtonContainerWidget(),
                Expanded(
                  child: Container(
       color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
