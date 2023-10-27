// ignore_for_file: invalid_return_type_for_catch_error

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/Login_dashBoard/login_dashBoard.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/constant/const.dart';
import 'package:shaila_rani_website/view/constant/constant.validate.dart';
import 'package:shaila_rani_website/view/fonts/google_monstre.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/widgets/back_button/back_button_widget.dart';
import 'package:shaila_rani_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

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
              loginshowDilogueBox(context);
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

loginshowDilogueBox(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      final GlobalKey<FormState> formKey = GlobalKey<FormState>();
      TextEditingController emailController = TextEditingController();
      TextEditingController passwordController = TextEditingController();
      return Form(
        key: formKey,
        child: AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GooglePoppinsWidgets(
                  text: 'LOGIN   TO     A D M I N P A N E L',
                  fontsize: 13,
                  fontWeight: FontWeight.w600),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: BackButtonContainerWidget(),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                SizedBox(
                  height: 250,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormFiledContainerWidget(
                        controller: emailController,
                        hintText: 'Enter your email',
                        title: 'EMAIL ID',
                        width: 250,
                        validator: checkFieldEmailIsValid,
                      ),
                      TextFormFiledContainerWidget(
                        controller: passwordController,
                        hintText: 'Enter your password',
                        title: 'PASSWORD',
                        width: 250,
                        validator: checkFieldPasswordIsValid,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              try {
                                FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailController.text.trim(),
                                        password:
                                            passwordController.text.trim())
                                    .then((value) => Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return const LoginDashBoard();
                                          },
                                        ))).catchError((d){
                                          return showToast(msg: 'Invalid');
                                        });
                                //     .catchError((d) {
                                //   return showToast(msg: 'Invalid');
                                // });
                              } catch (e) {
                                print("-------------------object");
                               showToast(msg: e.toString());
                                log(e.toString());
                              }
                            }
                          },
                          child: Container(
                            height: 30,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: themeColorBlue,
                            ),
                            child: Center(
                              child: GooglePoppinsWidgets(
                                  text: 'LOGIN',
                                  color: cWhite,
                                  fontsize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
