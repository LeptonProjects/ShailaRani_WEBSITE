import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

import '../../home_screen.dart';

class OurTeamContainerWidget extends StatelessWidget {
  const OurTeamContainerWidget({
    super.key,
    required this.sscrollcontroller,
  });

  final ScrollController sscrollcontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SizedBox(
            //................................. OUR TEAM
            height: 280,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ResponsiveWebSite.isMobile(context)
                  ? Column(
                      children: [
                        SizedBox(
                            height: 50,
                            width:
                                ResponsiveWebSite.isTablet(context) ? 200 : 300,
                            child: Column(
                              children: [
                                Center(
                                  child: GooglePoppinsWidgets(
                                    text: "O U R  T E A M",
                                    fontsize: 20,
                                    color: cWhite,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 05),
                                  child: Container(
                                    color: Colors.amber,
                                    height: 02,
                                    width: 80,
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                            height: 200,
                            width: double.infinity,
                            child: Image.asset(
                              'assests/images/group_photo.jpeg',
                              fit: BoxFit.cover,
                            ))
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 400,
                            width:
                                ResponsiveWebSite.isTablet(context) ? 200 : 300,
                            child: Center(
                              child: GooglePoppinsWidgets(
                                text: "OUR TEAM",
                                fontsize: ResponsiveWebSite.isTablet(context)
                                    ? 30
                                    : 50,
                                color: cWhite,
                              ),
                            )),
                        Container(
                          color: Colors.amber,
                          height: 300,
                          width: 01,
                        ),
                        SizedBox(
                            height:
                                ResponsiveWebSite.isTablet(context) ? 280 : 600,
                            width:
                                ResponsiveWebSite.isTablet(context) ? 450 : 600,
                            child: Image.asset(
                              'assests/images/group_photo.jpeg',
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
            ),
          ),
          SizedBox(
              // color: Colors.black,
              height: ResponsiveWebSite.isMobile(context)?500:350,
              // width: 600,
              child: ResponsiveWebSite.isDesktop(context)
                  ? ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      controller: sscrollcontroller,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 400,
                          width: 400,
                          child: Column(
                            children: [
                              Image.asset(
                                persionPhotos[index],
                                fit: BoxFit.cover,
                              ),
                                                             Text(
                                      personNameList[index],
                                      style: const TextStyle(
                                          color: cWhite,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    GooglePoppinsWidgets(text: personOccu[index], fontsize: 10,color: cWhite,fontWeight: FontWeight.w200,)
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 20,
                        );
                      },
                      itemCount: persionPhotos.length)
                  : GridView.count(
                      crossAxisCount: 2,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      primary: false,
                      children: List.generate(
                          persionPhotos.length,
                          (index) => SizedBox(
                                // margin: ,
                                height: 100,
                                width: 100,
                                // color: Colors.amber,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      persionPhotos[index],
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      personNameList[index],
                                      style: const TextStyle(
                                          color: cWhite,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    GooglePoppinsWidgets(text: personOccu[index], fontsize: 10,color: cWhite,fontWeight: FontWeight.w200,)
                                  ],
                                ),
                              )),
                    )),
        ],
      ),
    );
  }
}

List<String> personNameList = [
  'Adv Ambily Byju',
  'Adv Rekha C T',
  'Dr Divya G G',
  'Jasna Khan',
];
List<String> personOccu = [
  'Advocate',
  'Advocate',
  'Operations Manager',
  'Client Consultant',
];
