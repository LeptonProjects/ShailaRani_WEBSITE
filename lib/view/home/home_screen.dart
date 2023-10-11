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
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: cBlack.withOpacity(0.9),
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
          Row(
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
          ),
          Center(
            child: SizedBox(
              height: 80,
              width: 200,
              child: Center(
                child: GooglePoppinsWidgets(
                  text: 'OUR PRACTICES',
                  fontsize: 25,
                  fontWeight: FontWeight.w800,
                  color: cWhite,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenSize.width / 25,
              bottom: screenSize.width / 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SquareContainer(
                  squareContainerHeading: "Domestic Violence",
                  squareContainerbody:
                      "Domestic violence makes no distinctions. It affects people of all sexes, ages, and socioeconomic backgrounds. The home should be a place of safety, not dread and violence. Don't suffer in silence.",
                  imageUrl: 'assests/images/dom_violance.jpg',
                ),
                SizedBox(
                  width: screenSize.width / 20,
                ),
                const SquareContainer(
                  squareContainerHeading: "Contested Divorce",
                  squareContainerbody:
                      "Contested divorce is about more than simply defending your rights; it's also about building a brighter future for you. Keep your eyes on that goal and remain focused.",
                  imageUrl: 'assests/images/divorce.jpg',
                ),
                SizedBox(
                  width: screenSize.width / 20,
                ),
                const SquareContainer(
                  squareContainerHeading: "Child Custody",
                  squareContainerbody:
                      "Child custody is much more than just legal rights; it's about providing your child with a secure and supportive environment. Maintain your focus to get the finest results, and remember that you are not alone.",
                  imageUrl: 'assests/images/child_custody.jpg',
                ),
                SizedBox(
                  width: screenSize.width / 20,
                ),
                const SquareContainer(
                  squareContainerHeading: "Marriage",
                  squareContainerbody:
                      "We help couples from start to finish in their quest for court marriage-from preparing notice of marriage to file for an order for police protection.",
                  imageUrl: 'assests/images/marrage_pic.jpg',
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenSize.width / 25,
              bottom: screenSize.width / 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SquareContainer(
                  squareContainerHeading: "Family Court",
                  squareContainerbody:
                      "The appeal from family courts lies directly to the High Court within 30 days of passing the order or the judgement. Such The appeal can be on both question of law and question of fact. No appeal lies against an order which is passed with the consent of the parties",
                  imageUrl: 'assests/images/family_court.jpeg',
                ),
                SizedBox(
                  width: screenSize.width / 20,
                ),
                const SquareContainer(
                  squareContainerHeading: "Mediation",
                  squareContainerbody:
                      "Mediation is an excellent choice for matrimonial disputes, especially those involving child custody, support, and other issues. Section 914 of the Family Courts Act allows the Family Court to make fair efforts to settle matrimonial disputes, and Counselors' assist the Family Court in this effort.",
                  imageUrl: 'assests/images/mediation.jpg',
                ),
                SizedBox(
                  width: screenSize.width / 20,
                ),
                const SquareContainer(
                  squareContainerHeading: "Maintanance",
                  squareContainerbody:
                      "The couple must decide by the agreement whether maintenance will be paid to or received by any spouse in case of a divorce by mutual consent. In these situations, the husband may give alimony or maintenance to the wife or vice versa, depending on the agreement. By the couple's contract, the court grants a divorce.",
                  imageUrl: 'assests/images/maintanance.jpg',
                ),
                SizedBox(
                  width: screenSize.width / 20,
                ),
                const SquareContainer(
                  squareContainerHeading: "Family Councelling",
                  squareContainerbody:
                      "Family counselling is a type of social work that helps families address and resolve issues. It can be useful for couples who are struggling, or for families with children who are experiencing behavioural or emotional problems. Family counselling can also help to improve communication within the family unit.",
                  imageUrl: 'assests/images/family_counceling.jpg',
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

class SquareContainer extends StatelessWidget {
  final String imageUrl;
  final String squareContainerHeading;
  final String squareContainerbody;
  const SquareContainer(
      {super.key,
      required this.imageUrl,
      required this.squareContainerHeading,
      required this.squareContainerbody});

  @override
  Widget build(BuildContext context) {
    var screenSizeWidth = MediaQuery.of(context).size.width;
    // var screeSizeHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
          width: screenSizeWidth / 5,
          height: screenSizeWidth / 3.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0),
            border: Border.all(width: 1, color: Colors.transparent),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(
                  10.0,
                  2.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.black38,
                offset: Offset(5.0, 5.0),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
            ],
          ),
          child: Column(
            children: [
              Image.asset(imageUrl),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 10.0),
                child: GooglePoppinsWidgets(
                  text: squareContainerHeading,
                  fontsize: screenSizeWidth / 70,
                  fontWeight: FontWeight.bold,
                ),
              )),
              const SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: GooglePoppinsWidgets(
                    text: squareContainerbody,
                    fontsize: screenSizeWidth / 115,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
