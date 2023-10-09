import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/home/side_menuBar/is_desktop.dart';
import 'package:shaila_rani_website/view/home/side_menuBar/widget/costecDujologo.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SidebarDrawer(
        body: Column(
          children: [
            AppBar(
              leading: const DrawerIcon(),
            ),
            pages[selectedIndex]
          ],
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
  Container(
    child: Center(
      child: Text(sideMenu[0]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[1]),
    ),
  ),
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
  Container(
    child: Center(
      child: Text(sideMenu[4]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[5]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[6]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[7]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[8]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[9]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[10]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[11]),
    ),
  ),
];
