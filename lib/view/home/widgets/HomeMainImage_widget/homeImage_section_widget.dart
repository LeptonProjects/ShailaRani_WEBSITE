import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/home/widgets/HomeMainImage_widget/drop_down_list.dart';
import 'package:shaila_rani_website/view/home/widgets/about_dilog_BOX/about_dilog_box.dart';
import 'package:shaila_rani_website/view/home/widgets/details_contact_container_widget/details_contact_container.dart';
import 'package:shaila_rani_website/view/home/widgets/hover_mouse/hover_text.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

class HomeMainImageScreenWidget extends StatelessWidget {
  const HomeMainImageScreenWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context) ? 600 : 1000,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assests/images/home_image_new.jpg'),
            fit: BoxFit.cover),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                return GestureDetector(
                  onTap: () {
                    showAboutPage(context);
                  },
                  child: SizedBox(
                    height: 40,
                    width: 80,
                    child: Center(
                      child: GooglePoppinsWidgets(
                          text: "About", fontsize: 12, color: colorr),
                    ),
                  ),
                );
              }),
              DropdownButton(
                // dropdownColor: Colors.co,
                hint: GooglePoppinsWidgets(
                    text: "Services", fontsize: 12, color: cWhite),

                style: GoogleFonts.poppins(color: Colors.black),
                underline: const Text(''),
                items: sevicesList.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
              OnHoverTextForHeader(builder: (isHoverd) {
                final colorr = isHoverd
                    ? const Color.fromARGB(255, 192, 145, 128)
                    : cWhite;
                return SizedBox(
                  height: 40,
                  width: 80,
                  child: Center(
                    child: GooglePoppinsWidgets(
                        text: "Contact", fontsize: 12, color: colorr),
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
                        return GestureDetector(
                          onTap: () => launchWhatsAppUrl(),
                          child: Container(
                            height: 45,
                            width: 150,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.brown.shade400)),
                            child: Center(
                              child: GooglePoppinsWidgets(
                                text: "Get Appointment",
                                fontsize: 14,
                                color: colorr,
                                fontWeight: FontWeight.w400,
                              ),
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
                      height: ResponsiveWebSite.isMobile(context) ? 300 : 500,
                      width: ResponsiveWebSite.isMobile(context) ? 300 : 500,
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
                          height:
                              ResponsiveWebSite.isTablet(context) ? 300 : 500,
                          width:
                              ResponsiveWebSite.isTablet(context) ? 300 : 500,
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
                        height: ResponsiveWebSite.isMobile(context) ? 200 : 260,
                        width: ResponsiveWebSite.isMobile(context) ? 200 : 300,
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
                padding: const EdgeInsets.only(left: 180, bottom: 100),
                child: SizedBox(
                  height: 200,
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      Text(
                        "Defending  Your  Rights,\n   Upholding  Your  trust",
                        style: GoogleFonts.castoroTitling(
                            color: const Color(0xFFCE8F2E),
                            fontSize: screenSize.width / 36),
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
                          color: const Color(0xFFCE8F2E),
                          fontSize:
                              ResponsiveWebSite.isMobile(context) ? 20 : 30),
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
                    return GestureDetector(
                      onTap: () => launchWhatsAppUrl(),
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.brown.shade400)),
                        child: Center(
                          child: GooglePoppinsWidgets(
                            text: "Get Appointment",
                            fontsize: 14,
                            color: colorr,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  })
                ],
              )
            : const Text(""),
      ]),
    );
  }
}
