import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/home/footer/widgets/footer_text_wid.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

class FooterSectionScreen extends StatelessWidget {
  const FooterSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context)
          ? 900
          : ResponsiveWebSite.isTablet(context)
              ? 900
              : 400,
      color: cBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveWebSite.isMobile(context)
              ? const Column(
                  children: [
                    AdvDiscribeWidget(),
                    SpecializationWidget(),
                    NewsLetterWidget()
                  ],
                )
              : ResponsiveWebSite.isTablet(context)
                  ? const Column(
                      children: [
                        AdvDiscribeWidget(),
                        SpecializationWidget(),
                        NewsLetterWidget()
                      ],
                    )
                  : const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AdvDiscribeWidget(),
                        SpecializationWidget(),
                        NewsLetterWidget()
                      ],
                    )
        ],
      ),
    );
  }
}
