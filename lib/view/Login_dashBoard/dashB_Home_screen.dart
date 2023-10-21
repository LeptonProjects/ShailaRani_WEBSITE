import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/Login_dashBoard/side_menuBar/is_desktop.dart';
import 'package:shaila_rani_website/view/Login_dashBoard/side_menuBar/widget/costecDujologo.dart';
import 'package:shaila_rani_website/view/pages/client_management/client/client_page.dart';
import 'package:shaila_rani_website/view/pages/staff_management/staff_screen.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

import '../../features/video_management/presentation/pages/video_management_home_screen.dart';

// ignore: must_be_immutable
class DashBoardHomeScreen extends StatefulWidget {
  const DashBoardHomeScreen({super.key});

  @override
  State<DashBoardHomeScreen> createState() => _DashBoardHomeScreenState();
}

class _DashBoardHomeScreenState extends State<DashBoardHomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SidebarDrawer(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: cWhite,
                leading: const DrawerIcon(),
              ),
              pages[selectedIndex]
            ],
          ),
        ),
        drawer: ListView(children: [
          const CostechDujoLogoWidget(),
          SideBarMenuItemsWidget(
            selectedIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ]),
      ),
    );
  }
}

List<Widget> pages = [
  StaffHomeScreen(),
  Container(
    child: Center(
      child: Text(sideMenu[1]),
    ),
  ),
  const VideoManageMentHomeScreen(),
 const StaffHomeScreen(),
 const ClientDetailsScreen(),
  // Container(
  //   child: Center(
  //     child: Text(sideMenu[1]),
  //   ),
  // ),
  Container(
    child: Center(
      child: Text(sideMenu[2]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[3]),
    ),
  ),


];
