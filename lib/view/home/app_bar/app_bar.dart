// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/home/login_button/login_button.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

const String _imageUrl =
    "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/dujocolleges.jpeg?alt=media&token=0c3fa202-c59f-47bd-b997-88f3128e6871";

const String _description = "Any schools from Kerala can register on\n"
    "COSTECH DuJo. COSTECH Dujo is a mobile application\n"
    "with student login,  parent login, teacher login";

final Uri _faceBookUrl = Uri.parse('https://facebook.com/AdvocateShailaRani/');
final Uri _twitterUrl = Uri.parse('https://twitter.com/LeptonDujo');
final Uri _instaUrl =
    Uri.parse('https://www.instagram.com/adv.shailarani/?hl=en');
final Uri _utubeUrl = Uri.parse('https://www.youtube.com/c/AdvShailaRani');
final Uri _leptonUrl = Uri.parse('http://www.leptoncommunications.com');

Future<void> _launchFacebookUrl() async {
  if (!await launchUrl(_faceBookUrl)) {
    throw 'Could not launch $_faceBookUrl';
  }
}


Future<void> _launchTwitterUrl() async {
  if (!await launchUrl(_twitterUrl)) {
    throw 'Could not launch $_twitterUrl';
  }
}

Future<void> _launchyouTubeUrl() async {
  if (!await launchUrl(_utubeUrl)) {
    throw 'Could not launch $_utubeUrl';
  }
}

Future<void> _launchInstaUrl() async {
  if (!await launchUrl(_instaUrl)) {
    throw 'Could not launch $_instaUrl';
  }
}

Future<void> _launchleptonUrl() async {
  if (!await launchUrl(_leptonUrl)) {
    throw 'Could not launch $_leptonUrl';
  }
}

class ResponsiveMobileAppBar extends StatelessWidget {
  const ResponsiveMobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidthValue;
    return LayoutBuilder(builder: (context, constrain) {
      maxWidthValue = constrain.maxWidth;

      return Container(
        color: cBlack,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Row(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assests/images/advo_logo_new.png',
                        fit: BoxFit.contain,
                        color: Colors.white,
                        height: ResponsiveWebSite.isMobile(context) ? 70 : 90,
                        width: 120,
                      ),
                    ],
                  ),

                  // ),
                ],
              ),
              const Spacer(),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarPhoneNumber(maxWidthValue),
                  Visibility(
                    visible: maxWidthValue > 430,
                    child: Expanded(
                      child: Row(
                        children: [
                          ResponsiveWebSite.isDesktop(context)
                              ? const LoginButton()
                              : const Text(''),
                          ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              children: socailMediaList
                                  .map((data) => Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: InkWell(
                                                onTap: data.tilteFunExecution,
                                                // child: data.assetImage!,
                                                child: Image.asset(
                                                  data.imageString!,
                                                  height: 20,
                                                  width: 20,
                                                  color: Colors.white,
                                                )

                                                // data.assetImage!,
                                                ),
                                          ),
                                        ],
                                      ))
                                  .toList()),
                        ],
                      ),
                    ),
                  ),
                  // SocaiMedaAtAppbar(),

                  // Visibility(
                  //   visible: maxWidthValue < 430,
                  //   child: Row(
                  //     children: [
                  //       ResponsiveWebSite.isDesktop(context)
                  //           ? const LoginButton()
                  //           : const Text('')
                  //       // Icon(
                  //       //   Icons.more_vert,
                  //       //   color: Colors.white,
                  //       // ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}

class SocaiMedaAtAppbar extends StatelessWidget {
  const SocaiMedaAtAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFCE230C),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const LoginButton(), // Login Button
          InkWell(
            onTap: () {
              _launchFacebookUrl();
            },
            child: Image.asset(
              'assests/images/frdd.png',
              height: 20,
              width: 20,
              color: themeColorBlue,
              //Color(0xFF17BDB5),
            ),
          ),
          InkWell(
            onTap: () {
              _launchInstaUrl();
            },
            child: Image.asset(
              'assests/images/frdd.png',
              height: 25,
              width: 25,
              color: themeColorBlue,
            ),
          ),
          InkWell(
            onTap: () {
              _launchTwitterUrl();
            },
            child: Image.asset(
              'assests/images/frdd.pngg',
              height: 20,
              width: 20,
              color: themeColorBlue,
            ),
          ),
          InkWell(
            onTap: () {
              _launchyouTubeUrl();
            },
            child: const Icon(
              Icons.ondemand_video,
              color: themeColorBlue,
            ),
          )
        ],
      ),
    );
  }
}

class AppBarPhoneNumber extends StatelessWidget {
  final double maxWidthValue;
  const AppBarPhoneNumber(
    this.maxWidthValue, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xFFCE230C),
      // height: 60,
      // width: MediaQuery.of(context).size.width,
      child: maxWidthValue < 430
          ? const Padding(
              padding: EdgeInsets.all(7),
              child: Column(
                children: [
                  MobNumber01(),
                  MobNumber02(),
                ],
              ),
            )
          : const Padding(
              padding: EdgeInsets.all(7),
              child: Row(
                children: [
                  MobNumber01(),
                  MobNumber02(),
                ],
              ),
            ),
    );
  }
}

class MobNumber02 extends StatelessWidget {
  const MobNumber02({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '✉️ info@shailaraniassociates.com',
      style: GoogleFonts.poppins(
          // themeColorBlue,
          color: cWhite,
          fontSize: ResponsiveWebSite.isMobile(context) ? 09 : 12,
          fontWeight: FontWeight.w400),
    );
  }
}

class MobNumber01 extends StatelessWidget {
  const MobNumber01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '📞 +91 9633277604    ',
      style: GoogleFonts.poppins(
          color: cWhite,
          //Color(0xFF17BDB5),
          fontSize: 13,
          fontWeight: FontWeight.w500),
    );
  }
}

//  byh Rajesh Thanu
class SocailMediaModel {
  SocailMediaModel({
    this.title,
    this.iconData,
    this.icon,
    this.assetImage,
    this.imageString,
    this.tilteFunExecution,
    this.iconFunExecution,
  });
  final String? title;
  final IconData? iconData;
  final Icon? icon;
  final Image? assetImage;
  final String? imageString;
  Function()? tilteFunExecution;
  Future<void>? iconFunExecution;
}

List<SocailMediaModel> socailMediaList = <SocailMediaModel>[
  SocailMediaModel(
      // title: StringConst.Facebook,
      iconData: Icons.home,
      assetImage: Image.asset(
        'assests/images/frdd.png',
        // height: 30,
        // width: 30,

        // color: socilMediIconColor,
        //Color(0xFF17BDB5),
      ),
      imageString: 'assests/images/frdd.png',
      tilteFunExecution: _launchFacebookUrl),
  SocailMediaModel(
      // title: StringConst.Instagram,
      iconData: Icons.home,
      assetImage: (Image.asset(
        'assests/images/instag.png',
        // height: 30,
        // width: 30,
        // color: socilMediIconColor,
        //Color(0xFF17BDB5),
      )),
      imageString: 'assests/images/instag.png',
      tilteFunExecution: _launchInstaUrl),
  SocailMediaModel(
      // title: StringConst.Twitter,
      assetImage: (Image.asset(
        'assests/images/twitt.png',
        // height: 30,
        // width: 30,
        // color: socilMediIconColor,
        //Color(0xFF17BDB5),
      )),
      imageString: 'assests/images/twitt.png',
      tilteFunExecution: _launchInstaUrl),
  SocailMediaModel(
      // title: StringConst.Youtube,
      assetImage: (Image.asset(
        'assests/images/utube.png',
        // height: 30,
        // width: 30,
        // color: socilMediIconColor,
        //Color(0xFF17BDB5),
      )),
      imageString: 'assests/images/utube.png',
      tilteFunExecution: _launchyouTubeUrl),
];
