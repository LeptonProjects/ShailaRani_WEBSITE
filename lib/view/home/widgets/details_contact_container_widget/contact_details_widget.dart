import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';

class ContactAndDeatilsContainerWidget extends StatelessWidget {
  const ContactAndDeatilsContainerWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: screenSize.width / 4,
          width: screenSize.width / 4,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            //border: Border.all(width: 1,color: Colors.white,)
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Don't Hesitate to Ask ",
                        style: TextStyle(
                            fontSize: screenSize.width / 60,
                            color: cWhite),
                      ),
                      SizedBox(
                        height: screenSize.width / 50,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: const Color(0xFFCE8F2E))),
                          padding: EdgeInsets.only(
                              left: screenSize.width / 100,
                              top: 5,
                              bottom: 5,
                              right: screenSize.width / 100),
                          child: Text(
                            "Fix Appointment",
                            style: TextStyle(
                                color: cWhite,
                                fontSize: screenSize.width / 110),
                          )),
                    ],
                  ),
                ),
              ],

    
            ),
          ),
        ),
        Container(
          height: screenSize.width / 6,
          alignment: Alignment.center,
          child: const VerticalDivider(
            color: Color(0xFFCE8F2E),
            thickness: 1,
          ),
        ),
        Container(
          height: screenSize.width / 4,
          width: screenSize.width / 4,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            //border: Border.all(width: 1,color: Colors.white,)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Emergency contacts",
                    style: TextStyle(
                        fontSize: screenSize.width / 60, color: cWhite),
                  ),
                ),
                SizedBox(
                  height: screenSize.width / 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: screenSize.width / 75,
                      color: Colors.blueGrey,
                    ),
                    const Text(
                      "+91-123456789",
                      style: TextStyle(color: cWhite),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      size: screenSize.width / 75,
                      color: Colors.blueGrey,
                    ),
                    const Text(
                      "info@shailaraniassociates.com",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assests/images/whatsApp_image-removebg-preview.png",
                          height: screenSize.width / 15,
                          width: screenSize.width / 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: screenSize.width / 6,
          alignment: Alignment.center,
          child: const VerticalDivider(
            color: Color(0xFFCE8F2E),
            thickness: 1,
          ),
        ),
        Container(
          width: 400,
          height: 300,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GooglePoppinsWidgets(
                text: 'Our Office Address',
                fontsize: 15,
                color: cWhite,
                fontWeight: FontWeight.w700,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GooglePoppinsWidgets(
                          text: 'TRIVANDRUM OFFICE',
                          fontsize: 12,
                          color: cWhite,
                          fontWeight: FontWeight.w500,
                        ),
                        GooglePoppinsWidgets(
                          text:
                              '5th Floor, Karimpanal Statue Avenue,Near\nSecretariat Trivandrum-01\n Call +91 9562377604',
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GooglePoppinsWidgets(
                          text: 'CHENNAI OFFICE',
                          fontsize: 12,
                          color: cWhite,
                          fontWeight: FontWeight.w500,
                        ),
                        GooglePoppinsWidgets(
                          text:
                              'T.Shanmu Pillai(Advocate),\n No:25 Law Chamber Madras High Court,\nChennai-104',
                          fontsize: 11,
                          color: cWhite,
                          // fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}