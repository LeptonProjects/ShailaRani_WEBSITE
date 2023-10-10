
import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/Login_dashBoard/login_dashBoard.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_monstre.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: SizedBox(
        height: 30,
        width: 100,
        //  color: cBlue,
        child: InkWell(
            onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) {
           return const LoginDashBoard();
         },));
            },
            child: Container(
                height: 25,
                width: 65,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: cWhite,
                    border: Border.all(color: cWhite)),
                child: Center(
                  child: GoogleMonstserratWidgets(
                    text: "Login",
                    fontsize: 14,
                    fontWeight: FontWeight.w600,
                    color: cBlack,
                  ),
                ))),
      ),
    );
  }
}
