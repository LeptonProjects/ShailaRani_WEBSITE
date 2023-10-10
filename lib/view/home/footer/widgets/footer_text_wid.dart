import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/home/widgets/hover_mouse/hover_text.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsLetterWidget extends StatelessWidget {
  const NewsLetterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        // color: Colors.amber,
        height: 260,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
              text: 'Newsletter',
              fontsize: 20,
              color: cWhite,
              fontWeight: FontWeight.bold,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 300,
                        child: GooglePoppinsWidgets(
                          text:
                              'Subscribe to our newsletter for informative videos, latest updates and more! We value your privacy',
                          fontsize: 11,
                          color: cWhite,
                        )),
                    SizedBox(
                        // color: Colors.red,
                        height: 100,
                        width: 300,
                        child: Row(
                          children: [
                            Container(
                              color: cWhite,
                              width: 160,
                              height: 40,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.only(bottom: 10, left: 10),
                                  hintStyle: TextStyle(fontSize: 13),
                                  hintText: 'Enter your e-mail',
                                ),
                              ),
                            ),
                            OnHoverTextForHeader(
                              builder: (isHoverd) {
                                             final colorr = isHoverd
                              ? cBlack
                              : cWhite;
                                return Container(
                                  color: const Color.fromARGB(255, 255, 126, 6),
                                  width: 78,
                                  height: 40,
                                  child: Center(
                                    child: GooglePoppinsWidgets(
                                        text: 'SUBMIT',
                                        fontsize: 11.2,
                                        color: colorr,
                                        fontWeight: FontWeight.bold),
                                  ),
                                );
                              }
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AdvDiscribeWidget extends StatelessWidget {
  const AdvDiscribeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.grey,
      height: 300,
      width: 300,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 100,
              width: 160,
              child: Center(
                  child: Image.asset(
                      'assests/images/adv.shaila-rani-associates.png'))),
          SizedBox(
            height: 100,
            width: 300,
            child: Center(
              child: GooglePoppinsWidgets(
                  text:
                      'As a family cum divorce lawyer, my journey has been far from easy. With each case, I have had to draw on my reserves of compassion and objectivity to support women in distress and help free them from the chains of toxic relationships.',
                  fontsize: 11,
                  color: cWhite),
            ),
          )
        ],
      ),
    );
  }
}

class SpecializationWidget extends StatelessWidget {
  const SpecializationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.grey,
      height: 300,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 40,
              width: 200,
              child: GooglePoppinsWidgets(
                text: 'Specialization',
                fontsize: 20,
                fontWeight: FontWeight.w700,
                color: cWhite,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 240,
              width: 300,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return OnHoverTextForHeader(builder: (isHoverd) {
                      final colorr = isHoverd
                          ? const Color.fromARGB(255, 192, 145, 128)
                          : cWhite;
                      return SizedBox(
                        height: 20,
                        width: 100,
                        child: GooglePoppinsWidgets(
                          text: specializationList[index],
                          fontsize: 11,
                          color: colorr,
                        ),
                      );
                    });
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: specializationList.length),
            ),
          )
        ],
      ),
    );
  }
}

List<String> specializationList = [
  '. Domestic Violence',
  '. Contested Divorce',
  '. Divorce by Mutual Consent',
  '. Child Support',
  '. Child Custody',
  '. Spousal Support',
];

List<String> constechDUjo = ['Who We Are', 'Why choose us'];
List<String> connect = ['Facebook', 'Instagram', 'Twitter', 'Youtube'];
List<String> legal = [
  'Terms & Conditions',
  'Privacy Policy',
  'Family Policy',
  'Trademark Policy',
  'Refund and\nCancellation Policy'
];
List<String> address = [
  '📌 Lepton Plus Communications (OPC) Pvt.Ltd'
      '5 th Floor,Karimpanal Statue Avenue , G.H. Road '
      'Statue,Thiruvanathapuram - 695001,Kerala,India',
  '📞 +91 97469 66651 | +91 97463 66651 | +91 471 4053483',
  '✉️ info@leptoncommunications.com',
  '✉️ leptoncommunications@gmail.com'
];

final Uri _faceBookUrl =
    Uri.parse('https://www.facebook.com/profile.php?id=100091062978371');
final Uri _twitterUrl = Uri.parse('https://twitter.com/LeptonDujo');
final Uri _instaUrl = Uri.parse('https://www.instagram.com/leptondujo/');
final Uri _utubeUrl = Uri.parse('https://www.youtube.com/@LEPTONDUJO/featured');
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

var connectnav = [
  _launchFacebookUrl(),
  _launchInstaUrl(),
  _launchTwitterUrl(),
  _launchyouTubeUrl(),
];
