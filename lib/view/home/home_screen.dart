import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_monstre.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/home/app_bar/app_bar.dart';
import 'package:shaila_rani_website/view/home/footer/footer.dart';
import 'package:shaila_rani_website/view/home/footer/widgets/copyright_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/HomeMainImage_widget/homeImage_section_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/details_contact_container_widget/details_contact_container.dart';
import 'package:shaila_rani_website/view/home/widgets/our_practices_widget/our_pratices_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/our_team_container_widget/our_Team_container.dart';
import 'package:shaila_rani_website/view/home/widgets/shaila_rani_ReadMore_widger/shaila_rani_ReadMore.dart';
import 'package:shaila_rani_website/view/home/widgets/video_section/video_sec_Container.dart';
import 'package:shaila_rani_website/view/pages/article_management/article_view.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

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
          HomeMainImageScreenWidget(screenSize: screenSize),

          /// Main Image Screen Section >>>>>>>>>>>>>>>

          const ShailaRaniReadMoreContainerWidget(), // Read More Section >>>>>>>>>
          const ContactAndDeatilsWidget(),
          const OurPracticesContainerWidget(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: VideoSectionContainer(sscrollcontroller: sscrollcontroller),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              height: ResponsiveWebSite.isMobile(context)
                  ? 350
                  : 500, // Adjust the height of the containers as needed
              child: Column(
                children: [
                  GooglePoppinsWidgets(
                    text: 'OUR ARTICLES',
                    fontsize: 25,
                    fontWeight: FontWeight.w800,
                    color: cWhite,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('ArticleManagement')
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ArticleView(
                                                          url: snapshot.data!
                                                                  .docs[index]
                                                              ['articleUrl'])));
                                        },
                                        child: Container(
                                            margin: const EdgeInsets.all(8.0),
                                            width: ResponsiveWebSite.isMobile(
                                                    context)
                                                ? 200
                                                : 400, // Adjust the width of each container as needed
                                            child: Container(
                                              color: Colors.white,
                                              child: Image.asset(
                                                  'assests/images/advo_logo_new.png'),
                                            )),
                                      ),
                                      GoogleMonstserratWidgets(
                                        text: snapshot.data!.docs[index]
                                            ['articleTitle'],
                                        fontsize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ],
                                  );
                                }),
                          );
                        } else {
                          return const Text('');
                        }
                      }),
                ],
              ),
              // child: ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: persionPhotos.map((photo) {
              //     return Container(
              //       margin: EdgeInsets.all(8.0),
              //       width: 150, // Adjust the width of each container as needed
              //       child: Container(
              //         color: Colors.white,
              //         child: Column(
              //           children: [
              //             Image.asset('assests/images/advo_logo_new.png'),
              //             Text(
              //               'data',
              //               style: TextStyle(color: Colors.white),
              //             )
              //           ],
              //         ),
              //       ),
              //       // decoration: BoxDecoration(
              //       //   borderRadius: BorderRadius.circular(8.0),
              //       //   image: DecorationImage(
              //       //     image: AssetImage('assests/images/advo_logo_new.png'),
              //       //     fit: BoxFit.cover,
              //       //   ),
              //       // ),
              //     );
              //   }).toList(),
              // ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: OurTeamContainerWidget(sscrollcontroller: sscrollcontroller),
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
