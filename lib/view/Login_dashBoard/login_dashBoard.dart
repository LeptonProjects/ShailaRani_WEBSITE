import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/Login_dashBoard/dashB_Home_screen.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

class LoginDashBoard extends StatelessWidget {
  const LoginDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWebSite(
          mobile: DashBoardHomeScreen(

          ),
          tablet: DashBoardHomeScreen(

          ),
          desktop: DashBoardHomeScreen(
      
          )),
    );
  }
}
