import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/home/app_bar/app_bar.dart';
import 'package:shaila_rani_website/view/home/footer/footer.dart';
import 'package:shaila_rani_website/view/home/footer/widgets/copyright_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/HomeMainImage_widget/homeImage_section_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/details_contact_container_widget/details_contact_container.dart';
import 'package:shaila_rani_website/view/home/widgets/our_practices_widget/our_pratices_widget.dart';
import 'package:shaila_rani_website/view/home/widgets/our_team_container_widget/our_Team_container.dart';
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
          HomeMainImageScreenWidget(screenSize: screenSize),

          /// Main Image Screen Section >>>>>>>>>>>>>>>

          const ShailaRaniReadMoreContainerWidget(), // Read More Section >>>>>>>>>
          const ContactAndDeatilsWidget(),
          const OurPracticesContainerWidget(),
          OurTeamContainerWidget(sscrollcontroller: sscrollcontroller),

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
