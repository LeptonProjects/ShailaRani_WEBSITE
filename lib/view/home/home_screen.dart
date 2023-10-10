import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/home/app_bar/app_bar.dart';
import 'package:shaila_rani_website/view/home/footer/footer.dart';
import 'package:shaila_rani_website/view/home/footer/widgets/copyright_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/hover_mouse/hover_text.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: ResponsiveMobileAppBar()),
      body: ListView(
        children: [
          Container(
            height: ResponsiveWebSite.isMobile(context) ? 600 : 1000,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assests/images/home_image_new.jpg'),
                  fit: BoxFit.cover),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    const Spacer(),
                    OnHoverTextForHeader(builder: (isHoverd) {
                      final colorr = isHoverd
                          ? const Color.fromARGB(255, 192, 145, 128)
                          : cWhite;
                      return SizedBox(
                        height: 40,
                        width: 80,
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: "Home", fontsize: 12, color: colorr),
                        ),
                      );
                    }),
                    OnHoverTextForHeader(builder: (isHoverd) {
                      final colorr = isHoverd
                          ? const Color.fromARGB(255, 192, 145, 128)
                          : cWhite;
                      return SizedBox(
                        height: 40,
                        width: 80,
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: "About", fontsize: 12, color: colorr),
                        ),
                      );
                    }),
                    OnHoverTextForHeader(builder: (isHoverd) {
                      final colorr = isHoverd
                          ? const Color.fromARGB(255, 192, 145, 128)
                          : cWhite;
                      return SizedBox(
                        height: 40,
                        width: 80,
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: "Services", fontsize: 12, color: colorr),
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.only(top: 02),
                      child: ResponsiveWebSite.isMobile(context)
                          ? const Text("")
                          : OnHoverTextForHeader(builder: (isHoverd) {
                              final colorr = isHoverd
                                  ? const Color.fromARGB(255, 192, 145, 128)
                                  : cWhite;
                              return Container(
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.brown.shade400)),
                                child: Center(
                                  child: GooglePoppinsWidgets(
                                    text: "Get Appoinment",
                                    fontsize: 14,
                                    color: colorr,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              );
                            }),
                    )
                  ],
                ),
              ),
              Padding(
                padding: ResponsiveWebSite.isMobile(context)
                    ? const EdgeInsets.only(bottom: 0, left: 0)
                    : ResponsiveWebSite.isTablet(context)
                        ? const EdgeInsets.only(bottom: 0, left: 0)
                        : const EdgeInsets.only(bottom: 40, left: 200),
                child: ResponsiveWebSite.isMobile(context)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height:
                                ResponsiveWebSite.isMobile(context) ? 300 : 500,
                            width:
                                ResponsiveWebSite.isMobile(context) ? 300 : 500,
                            child: Center(
                              child: Image.asset(
                                'assests/images/advo_logo_new.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      )
                    : ResponsiveWebSite.isTablet(context)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: ResponsiveWebSite.isTablet(context)
                                    ? 300
                                    : 500,
                                width: ResponsiveWebSite.isTablet(context)
                                    ? 300
                                    : 500,
                                child: Center(
                                  child: Image.asset(
                                    'assests/images/advo_logo_new.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 70, left: 200),
                            child: SizedBox(
                              // color: Colors.red,
                              height: ResponsiveWebSite.isMobile(context)
                                  ? 200
                                  : 260,
                              width: ResponsiveWebSite.isMobile(context)
                                  ? 200
                                  : 300,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Image.asset(
                                  'assests/images/advo_logo_new.png',
                                ),
                              ),
                            ),
                          ),
              ),
              ResponsiveWebSite.isDesktop(context)
                  ? Padding(
                      padding: const EdgeInsets.only(
                        left: 200,
                        top: 0,
                      ),
                      child: SizedBox(
                        height: 200,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Text(
                              "Defending  Your  Rights,\n   Upholding  Your  trust",
                              style: GoogleFonts.castoroTitling(
                                  color: cWhite, fontSize: 50),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Defending  Your  Rights,\n   Upholding  Your  trust",
                            style: GoogleFonts.castoroTitling(
                                color: cWhite,
                                fontSize: ResponsiveWebSite.isMobile(context)
                                    ? 20
                                    : 30),
                          ),
                        ],
                      ),
                    ),
              ResponsiveWebSite.isMobile(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OnHoverTextForHeader(builder: (isHoverd) {
                          final colorr = isHoverd
                              ? const Color.fromARGB(255, 192, 145, 128)
                              : cWhite;
                          return Container(
                            height: 45,
                            width: 150,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.brown.shade400)),
                            child: Center(
                              child: GooglePoppinsWidgets(
                                text: "Get Appoinment",
                                fontsize: 14,
                                color: colorr,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          );
                        })
                      ],
                    )
                  : const Text(""),
            ]),
          ),
          Container(
            color: const Color.fromARGB(255, 19, 19, 19),
            height: ResponsiveWebSite.isMobile(context) ? 180 : 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  child: GooglePoppinsWidgets(
                      text:
                          '''Shaila Rani & Associates is a prestigious multinational law firm specializing in family and divorce law.\nFounded and led by Advocate Shaila Rani.''',
                      fontsize: ResponsiveWebSite.isMobile(context) ? 14 : 18,
                      color: cWhite),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: ResponsiveWebSite.isDesktop(context) ? 0 : 15),
                    child: Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.yellow)),
                      child: Center(
                          child: GooglePoppinsWidgets(
                        text: 'Read More...',
                        fontsize: 12,
                        color: cWhite,
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 01,
            // thickness: 01,
            color: cWhite,
          ),
          const FooterSectionScreen(),
          const Divider(
            height: 01,
            // thickness: 01,
            color: cWhite,
          ),
          const CopyRightWidget()
        ],
      ),
    );
  }
}

List<String> headerText = [
  'Home',
  'About',
  'Sevices',
];
