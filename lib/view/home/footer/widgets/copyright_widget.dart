import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';


class CopyRightWidget extends StatelessWidget {
  const CopyRightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              GooglePoppinsWidgets(
                text: '©2023. Adv. Shaila Rani Associates. All Rights Reserved',
                fontsize: ResponsiveWebSite.isMobile(context) ? 8 : 15,
                fontWeight: FontWeight.w500,
                color: cWhite,
              ),
                   Padding(
                     padding: const EdgeInsets.only(top: 03),
                     child: GooglePoppinsWidgets(
                                   text: 'Powered  by Lepton Communications',
                                   fontsize: ResponsiveWebSite.isMobile(context) ? 7 : 11,
                                   fontWeight: FontWeight.w300,
                                   color: cWhite,
                                 ),
                   ),
            ],
          )
        ],
      ),
    );
  }
}