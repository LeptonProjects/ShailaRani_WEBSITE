import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_monstre.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactAndDeatilsWidget extends StatelessWidget {
  const ContactAndDeatilsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      height: ResponsiveWebSite.isDesktop(context)
          ? 500
          : ResponsiveWebSite.isMobile(context)
              ? 800
              : 800,
      child: ResponsiveWebSite.isDesktop(context)
          ? Row(
              //>>>>>>>>>>>>>>>>>>>>    DESK TOP VIEW <<<<<<<<<<<<<<<<<<<<<<
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 400,
                  width: 300,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                        ),
                        child: GoogleMonstserratWidgets(
                          text: '''Don't Hesitate to Ask''',
                          fontsize: 22,
                          color: cWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 100,
                        ),
                        child: GestureDetector(
                          onTap: () => launchWhatsAppUrl(),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber)),
                            child: Center(
                              child: GoogleMonstserratWidgets(
                                  text: 'Fix Appoinment',
                                  fontsize: 12,
                                  color: cWhite),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: 1,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 400,
                  width: 300,
                  // color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoogleMonstserratWidgets(
                        text: '''Emergency contacts''',
                        fontsize: 24,
                        color: cWhite,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 300,
                        width: 500,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              const Text(
                                '📞 +91 9562776043',
                                style: TextStyle(color: cWhite),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  '✉️ info@shailaraniassociates.com',
                                  style: TextStyle(color: cWhite),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  launchWhatsAppUrl();
                                },
                                child: Image.asset(
                                  "assests/images/whatsApp_image-removebg-preview.png",
                                  height: screenSize.width / 15,
                                  width: screenSize.width / 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: 1,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 400,
                  width: 450,
                  // color: Colors.amber.withOpacity(0.1),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: GooglePoppinsWidgets(
                          text: 'Our Offices',
                          fontsize: 20,
                          color: cWhite,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 200,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'TRIVANDRUM ',
                                    fontsize: 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        '5th Floor, Karimpanal Statue Avenue,Near\nSecretariat Trivandrum-01\n Call 9562776043',
                                    fontsize: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 200,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'ERNAKULAM ',
                                    fontsize: 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'Balaji Building,Room \nNo:GE Road,\nNear MG Metro,Ernakulam',
                                    fontsize: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 180,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'BANGALORE ',
                                    fontsize: 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'No: 326, 2nd Floor,\n 2nd B Cross, Banaswadi\nBanglore',
                                    fontsize: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 180,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'CHENNAI ',
                                    fontsize: 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'No:25 Law Chamber \nMadras High Court,\nChennai-104',
                                    fontsize: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          : ResponsiveWebSite.isMobile(
                  context) //>>>>>>>>>>>>>>>> MOBILE VIEW    <<<<<<<<<<<<<<<<<<<<<
              ? Column(
                  children: [
                    SizedBox(
                      height: 150,

                      // color: Colors.amber,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 40,
                            ),
                            child: GoogleMonstserratWidgets(
                              text: '''Don't Hesitate to Ask''',
                              fontsize: 22,
                              color: cWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: GestureDetector(
                              onTap: () => launchWhatsAppUrl(),
                              child: Container(
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.amber)),
                                child: Center(
                                  child: GoogleMonstserratWidgets(
                                      text: 'Fix Appoinment',
                                      fontsize: 12,
                                      color: cWhite),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: 250,
                      // color: Colors.amber,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GoogleMonstserratWidgets(
                            text: '''Emergency contacts''',
                            fontsize: 24,
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 1,
                              width: 80,
                              color: const Color.fromARGB(255, 173, 128, 112),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  const Text(
                                    '📞 +91 9562776043',
                                    style: TextStyle(color: cWhite),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      '✉️ info@shailaraniassociates.com',
                                      style: TextStyle(color: cWhite),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => launchWhatsAppUrl(),
                                    child: SizedBox(
                                      height: 70,
                                      width: 150,
                                      child: Image.asset(
                                        "assests/images/whatsApp_image-removebg-preview.png",
                                        height: 70,
                                        width: 150,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 380,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: GooglePoppinsWidgets(
                              text: 'Our Office Address',
                              fontsize: 20,
                              color: cWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: 'TRIVANDRUM OFFICE',
                                        fontsize: 12,
                                        color: cWhite,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      GooglePoppinsWidgets(
                                        text:
                                            '5th Floor, Karimpanal Statue Avenue,Near\nSecretariat Trivandrum-01\n Call +91 9562776043',
                                        fontsize: 11,
                                        color: cWhite,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: 'ERNAKULAM OFFICE',
                                        fontsize: 12,
                                        color: cWhite,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      GooglePoppinsWidgets(
                                        text:
                                            'Balaji Building,Room \nNo:GE Road,\nNear MG Metro,Ernakulam',
                                        fontsize: 11,
                                        color: cWhite,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: 'BANGALORE OFFICE',
                                        fontsize: 12,
                                        color: cWhite,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      GooglePoppinsWidgets(
                                        text:
                                            'No: 326, 2nd Floor,\n 2nd B Cross, Banaswadi\nBanglore',
                                        fontsize: 11,
                                        color: cWhite,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: 'CHENNAI OFFICE',
                                        fontsize: 12,
                                        color: cWhite,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      GooglePoppinsWidgets(
                                        text:
                                            'No:25 Law Chamber \nMadras High Court,\nChennai-104',
                                        fontsize: 11,
                                        color: cWhite,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              : Column(
                  /// >>>>>>>>>>>>>>>>>>>>>> TAB VIEW <<<<<<<<<<<<<<
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 200,
                          width: 300,
                          // color: Colors.amber,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                ),
                                child: GoogleMonstserratWidgets(
                                  text: '''Don't Hesitate to Ask''',
                                  fontsize: 22,
                                  color: cWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 100,
                                ),
                                child: GestureDetector(
                                  onTap: () => launchWhatsAppUrl(),
                                  child: Container(
                                    height: 40,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.amber)),
                                    child: Center(
                                      child: GoogleMonstserratWidgets(
                                          text: 'Fix Appoinment',
                                          fontsize: 12,
                                          color: cWhite),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 300,
                          width: 1,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 400,
                          width: 300,
                          // color: Colors.amber,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GoogleMonstserratWidgets(
                                text: '''Emergency contacts''',
                                fontsize: 24,
                                color: cWhite,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height: 300,
                                width: 500,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      const Text(
                                        '📞 +91 9562776043',
                                        style: TextStyle(color: cWhite),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '✉️ info@shailaraniassociates.com',
                                          style: TextStyle(color: cWhite),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          launchWhatsAppUrl();
                                        },
                                        child: Image.asset(
                                          "assests/images/whatsApp_image-removebg-preview.png",
                                          height: screenSize.width / 15,
                                          width: screenSize.width / 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 380,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: GooglePoppinsWidgets(
                              text: 'Our Office Address',
                              fontsize: 20,
                              color: cWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: 'TRIVANDRUM OFFICE',
                                        fontsize: 12,
                                        color: cWhite,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      GooglePoppinsWidgets(
                                        text:
                                            '5th Floor, Karimpanal Statue Avenue,Near\nSecretariat Trivandrum-01\n Call +91 9562776043',
                                        fontsize: 11,
                                        color: cWhite,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: 'ERNAKULAM OFFICE',
                                        fontsize: 12,
                                        color: cWhite,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      GooglePoppinsWidgets(
                                        text:
                                            'Balaji Building,Room \nNo:GE Road,\nNear MG Metro,Ernakulam',
                                        fontsize: 11,
                                        color: cWhite,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: 'BANGALORE OFFICE',
                                        fontsize: 12,
                                        color: cWhite,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      GooglePoppinsWidgets(
                                        text:
                                            'No: 326, 2nd Floor,\n 2nd B Cross, Banaswadi\nBanglore',
                                        fontsize: 11,
                                        color: cWhite,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: 'CHENNAI OFFICE',
                                        fontsize: 12,
                                        color: cWhite,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      GooglePoppinsWidgets(
                                        text:
                                            'No:25 Law Chamber \nMadras High Court,\nChennai-104',
                                        fontsize: 11,
                                        color: cWhite,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
    );
  }
}

final Uri _whatsAppUrl = Uri.parse(
    "https://wa.me/9562776043/?text=${Uri.parse('Would like to get an appoinment')}");

Future<void> launchWhatsAppUrl() async {
  if (!await launchUrl(_whatsAppUrl)) {
    throw 'Could not launch $_whatsAppUrl';
  }
}
