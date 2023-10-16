import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/home/app_bar/app_bar.dart';
import 'package:shaila_rani_website/view/home/footer/footer.dart';
import 'package:shaila_rani_website/view/home/footer/widgets/copyright_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/HomeMainImage_widget/homeImage_section_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/shaila_rani_ReadMore_widger/shaila_rani_ReadMore.dart';

class HomeScreen extends StatelessWidget {
  final ScrollController sscrollcontroller = ScrollController();
  HomeScreen({super.key});

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
          HomeMainImageScreenWidget(screenSize: screenSize), /// Main Image Screen Section >>>>>>>>>>>>>>>

          const ShailaRaniReadMoreContainerWidget(), // Read More Section >>>>>>>>>
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Container(
          //       height: screenSize.width / 4,
          //       width: screenSize.width / 4,
          //       decoration: const BoxDecoration(
          //         color: Colors.transparent,
          //         //border: Border.all(width: 1,color: Colors.white,)
          //       ),
          //       child: Center(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Center(
          //               child: Column(
          //                 children: [
          //                   Text(
          //                     "Don't Hesitate to Ask ",
          //                     style: TextStyle(
          //                         fontSize: screenSize.width / 60,
          //                         color: cWhite),
          //                   ),
          //                   SizedBox(
          //                     height: screenSize.width / 50,
          //                   ),
          //                   Container(
          //                       decoration: BoxDecoration(
          //                           border: Border.all(
          //                               width: 1,
          //                               color: const Color(0xFFCE8F2E))),
          //                       padding: EdgeInsets.only(
          //                           left: screenSize.width / 100,
          //                           top: 5,
          //                           bottom: 5,
          //                           right: screenSize.width / 100),
          //                       child: Text(
          //                         "Fix Appointment",
          //                         style: TextStyle(
          //                             color: cWhite,
          //                             fontSize: screenSize.width / 110),
          //                       )),
          //                 ],
          //               ),
          //             ),
          //           ],

          
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: screenSize.width / 6,
          //       alignment: Alignment.center,
          //       child: const VerticalDivider(
          //         color: Color(0xFFCE8F2E),
          //         thickness: 1,
          //       ),
          //     ),
          //     Container(
          //       height: screenSize.width / 4,
          //       width: screenSize.width / 4,
          //       decoration: const BoxDecoration(
          //         color: Colors.transparent,
          //         //border: Border.all(width: 1,color: Colors.white,)
          //       ),
          //       child: Center(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Center(
          //               child: Text(
          //                 "Emergency contacts",
          //                 style: TextStyle(
          //                     fontSize: screenSize.width / 60, color: cWhite),
          //               ),
          //             ),
          //             SizedBox(
          //               height: screenSize.width / 200,
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Icon(
          //                   Icons.phone,
          //                   size: screenSize.width / 75,
          //                   color: Colors.blueGrey,
          //                 ),
          //                 const Text(
          //                   "+91-123456789",
          //                   style: TextStyle(color: cWhite),
          //                 ),
          //               ],
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Icon(
          //                   Icons.email,
          //                   size: screenSize.width / 75,
          //                   color: Colors.blueGrey,
          //                 ),
          //                 const Text(
          //                   "info@shailaraniassociates.com",
          //                   style: TextStyle(
          //                     fontSize: 13,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Column(
          //               children: [
          //                 Column(
          //                   children: [
          //                     Image.asset(
          //                       "assests/images/whatsApp_image-removebg-preview.png",
          //                       height: screenSize.width / 15,
          //                       width: screenSize.width / 10,
          //                     ),
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: screenSize.width / 6,
          //       alignment: Alignment.center,
          //       child: const VerticalDivider(
          //         color: Color(0xFFCE8F2E),
          //         thickness: 1,
          //       ),
          //     ),
          //     Container(
          //       width: 400,
          //       height: 300,
          //       color: Colors.transparent,
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           GooglePoppinsWidgets(
          //             text: 'Our Office Address',
          //             fontsize: 15,
          //             color: cWhite,
          //             fontWeight: FontWeight.w700,
          //           ),
          //           Row(
          //             children: [
          //               SizedBox(
          //                 height: 100,
          //                 width: 200,
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     GooglePoppinsWidgets(
          //                       text: 'TRIVANDRUM OFFICE',
          //                       fontsize: 12,
          //                       color: cWhite,
          //                       fontWeight: FontWeight.w500,
          //                     ),
          //                     GooglePoppinsWidgets(
          //                       text:
          //                           '5th Floor, Karimpanal Statue Avenue,Near\nSecretariat Trivandrum-01\n Call +91 9562377604',
          //                       fontsize: 11,
          //                       color: cWhite,
          //                       // fontWeight: FontWeight.w500,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 100,
          //                 width: 200,
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     GooglePoppinsWidgets(
          //                       text: 'ERNAKULAM OFFICE',
          //                       fontsize: 12,
          //                       color: cWhite,
          //                       fontWeight: FontWeight.w500,
          //                     ),
          //                     GooglePoppinsWidgets(
          //                       text:
          //                           'Balaji Building,Room \nNo:GE Road,\nNear MG Metro,Ernakulam',
          //                       fontsize: 11,
          //                       color: cWhite,
          //                       // fontWeight: FontWeight.w500,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ],
          //           ),
          //           Row(
          //             children: [
          //               SizedBox(
          //                 height: 100,
          //                 width: 200,
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     GooglePoppinsWidgets(
          //                       text: 'BANGALORE OFFICE',
          //                       fontsize: 12,
          //                       color: cWhite,
          //                       fontWeight: FontWeight.w500,
          //                     ),
          //                     GooglePoppinsWidgets(
          //                       text:
          //                           'No: 326, 2nd Floor,\n 2nd B Cross, Banaswadi\nBanglore',
          //                       fontsize: 11,
          //                       color: cWhite,
          //                       // fontWeight: FontWeight.w500,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 100,
          //                 width: 200,
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     GooglePoppinsWidgets(
          //                       text: 'CHENNAI OFFICE',
          //                       fontsize: 12,
          //                       color: cWhite,
          //                       fontWeight: FontWeight.w500,
          //                     ),
          //                     GooglePoppinsWidgets(
          //                       text:
          //                           'T.Shanmu Pillai(Advocate),\n No:25 Law Chamber Madras High Court,\nChennai-104',
          //                       fontsize: 11,
          //                       color: cWhite,
          //                       // fontWeight: FontWeight.w500,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
          // Center(
          //   child: SizedBox(
          //     height: 80,
          //     width: 200,
          //     child: Center(
          //       child: GooglePoppinsWidgets(
          //         text: 'OUR PRACTICES',
          //         fontsize: 25,
          //         fontWeight: FontWeight.w800,
          //         color: cWhite,
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: screenSize.width / 25,
          //     bottom: screenSize.width / 25,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       const SquareContainer(
          //         squareContainerHeading: "Domestic Violence",
          //         squareContainerbody:
          //             "Domestic violence makes no distinctions. It affects people of all sexes, ages, and socioeconomic backgrounds. The home should be a place of safety, not dread and violence. Don't suffer in silence.",
          //         imageUrl: 'assests/images/dom_violance.jpg',
          //       ),
          //       SizedBox(
          //         width: screenSize.width / 20,
          //       ),
          //       const SquareContainer(
          //         squareContainerHeading: "Contested Divorce",
          //         squareContainerbody:
          //             "Contested divorce is about more than simply defending your rights; it's also about building a brighter future for you. Keep your eyes on that goal and remain focused.",
          //         imageUrl: 'assests/images/divorce.jpg',
          //       ),
          //       SizedBox(
          //         width: screenSize.width / 20,
          //       ),
          //       const SquareContainer(
          //         squareContainerHeading: "Child Custody",
          //         squareContainerbody:
          //             "Child custody is much more than just legal rights; it's about providing your child with a secure and supportive environment. Maintain your focus to get the finest results, and remember that you are not alone.",
          //         imageUrl: 'assests/images/child_custody.jpg',
          //       ),
          //       SizedBox(
          //         width: screenSize.width / 20,
          //       ),
          //       const SquareContainer(
          //         squareContainerHeading: "Marriage",
          //         squareContainerbody:
          //             "We help couples from start to finish in their quest for court marriage-from preparing notice of marriage to file for an order for police protection.",
          //         imageUrl: 'assests/images/marrage_pic.jpg',
          //       )
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: screenSize.width / 25,
          //     bottom: screenSize.width / 25,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       const SquareContainer(
          //         squareContainerHeading: "Family Court",
          //         squareContainerbody:
          //             "The appeal from family courts lies directly to the High Court within 30 days of passing the order or the judgement. Such The appeal can be on both question of law and question of fact. No appeal lies against an order which is passed with the consent of the parties",
          //         imageUrl: 'assests/images/family_court.jpeg',
          //       ),
          //       SizedBox(
          //         width: screenSize.width / 20,
          //       ),
          //       const SquareContainer(
          //         squareContainerHeading: "Mediation",
          //         squareContainerbody:
          //             "Mediation is an excellent choice for matrimonial disputes, especially those involving child custody, support, and other issues. Section 914 of the Family Courts Act allows the Family Court to make fair efforts to settle matrimonial disputes, and Counselors' assist the Family Court in this effort.",
          //         imageUrl: 'assests/images/mediation.jpg',
          //       ),
          //       SizedBox(
          //         width: screenSize.width / 20,
          //       ),
          //       const SquareContainer(
          //         squareContainerHeading: "Maintanance",
          //         squareContainerbody:
          //             "The couple must decide by the agreement whether maintenance will be paid to or received by any spouse in case of a divorce by mutual consent. In these situations, the husband may give alimony or maintenance to the wife or vice versa, depending on the agreement. By the couple's contract, the court grants a divorce.",
          //         imageUrl: 'assests/images/maintanance.jpg',
          //       ),
          //       SizedBox(
          //         width: screenSize.width / 20,
          //       ),
          //       const SquareContainer(
          //         squareContainerHeading: "Family Councelling",
          //         squareContainerbody:
          //             "Family counselling is a type of social work that helps families address and resolve issues. It can be useful for couples who are struggling, or for families with children who are experiencing behavioural or emotional problems. Family counselling can also help to improve communication within the family unit.",
          //         imageUrl: 'assests/images/family_counceling.jpg',
          //       )
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   //................................. OUR TEAM
          //   height: 400,
          //   child: Padding(
          //     padding: const EdgeInsets.only(bottom: 20),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         SizedBox(
          //             height: 400,
          //             width: 600,
          //             child: Center(
          //               child: GooglePoppinsWidgets(
          //                 text: "OUR TEAM",
          //                 fontsize: 50,
          //                 color: cWhite,
          //               ),
          //             )),
          //         Container(
          //           color: Colors.amber,
          //           height: 300,
          //           width: 01,
          //         ),
          //         SizedBox(
          //             height: 400,
          //             width: 600,
          //             child: Image.asset(
          //               'assests/images/group_photo.jpeg',
          //               fit: BoxFit.fill,
          //             )),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   // color: Colors.black,
          //   height: 500,
          //   // width: 600,
          //   child: ListView.separated(
          //       physics: const AlwaysScrollableScrollPhysics(),
          //       // shrinkWrap: true,
          //       scrollDirection: Axis.horizontal,
          //       controller: sscrollcontroller,
          //       itemBuilder: (context, index) {
          //         return SizedBox(
          //           height: 400,
          //           width: 400,
          //           child: Column(
          //             children: [
          //               Image.asset(
          //                 persionPhotos[index],
          //                 fit: BoxFit.cover,
          //               ),
          //               GooglePoppinsWidgets(
          //                 text: "",
          //                 fontsize: 15,
          //                 fontWeight: FontWeight.bold,
          //               )
          //             ],
          //           ),
          //         );
          //       },
          //       separatorBuilder: (context, index) {
          //         return const SizedBox(
          //           width: 20,
          //         );
          //       },
          //       itemCount: persionPhotos.length),
          // ),
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





List<String> persionPhotos = [
  'assests/images/persion_4.jpeg',
  'assests/images/persion_2.jpeg',
  'assests/images/persion_1.jpeg',
  'assests/images/persion_3.jpeg',
];
List<String> persion_text = [''];

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
