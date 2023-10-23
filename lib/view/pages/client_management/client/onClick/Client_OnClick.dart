// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/pages/client_management/controller/client_controller.dart';
import 'package:shaila_rani_website/view/pages/staff_management/functions/upload_image/client%20_image.dart';
import 'package:shaila_rani_website/view/widgets/back_button/back_button_widget.dart';
import 'package:shaila_rani_website/view/widgets/blue_Container_widget/blue_Container_widget.dart';

clientDetailsShowingFunction({
  required BuildContext context,
  required String clientName,
  required String caseNo,
  required String mobileNo,
  required String whatsAppNo,
  required String emailID,
  required String gender,
  required String dob,
  required String marriageDate,
  required String typeofcase,
  required String clientoccupation,
  required String address,
  required String casediscription,
  required String oppositeadvocate,
  required String typeofMarriage,
  required String noofChildren,
  required String seperationDate,
  required String enteredDate,
  required String enterBy,
  required String state,
}) {
  ClientManagementController clientManagementController =
      Get.put(ClientManagementController());
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: 'CLIENT DETAILS',
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
            children: [
              SizedBox(
                height: 700,
                width: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // const CircleAvatar(
                            //   radius: 79,
                             
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: SizedBox(
                                height: 120,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      GooglePoppinsWidgets(
                                        text: clientName,
                                        fontsize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      GooglePoppinsWidgets(
                                        text: mobileNo,
                                        fontsize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      Row(
                                        children: [
                                          GooglePoppinsWidgets(
                                            text: "Type of Case : ",
                                            fontsize: 11,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          GooglePoppinsWidgets(
                                            text: typeofcase,
                                            fontsize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          GooglePoppinsWidgets(
                                            text: "Gender  : ",
                                            fontsize: 11,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          GooglePoppinsWidgets(
                                            text: gender,
                                            fontsize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'D O B',
                                    content: dob),
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'Marriage Date',
                                    content: marriageDate),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'Email',
                                    content: emailID),
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'Mobile No',
                                    content: mobileNo),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'WhatsApp No',
                                    content: whatsAppNo),
                               ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'Occupation',
                                    content: clientoccupation),
                              ],
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'Marriage Type',
                                    content: marriageDate),
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'No. of Children',
                                    content: noofChildren),
                              ],
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title:  "Seperation Date",
                                    content: seperationDate),
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: "Commencement Date",
                                    content: enteredDate),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ShowDetailClientContainerWidget(
                                    height: 100,
                                    width: 400,
                                    title: 'Address',
                                    content: address),
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'Opposite Advocate',
                                    content: oppositeadvocate),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ShowDetailClientContainerWidget(
                                    height: 100,
                                    width: 400,
                                    title: 'Discription',
                                    content: casediscription),
                                ShowDetailClientContainerWidget(
                                    height: 48,
                                    width: 300,
                                    title: 'State',
                                    content: state),
                              ],
                            ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ShowDetailClientContainerWidget(
                                        height: 48,
                                        width: 300,
                                        title: "Enter By",
                                        content: enterBy),
                                        ShowDetailClientContainerWidget(
                                        height: 48,
                                        width: 300,
                                        title: "Case Number",
                                        content: caseNo),
                                ],
                              ),
                        //  
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => uploadImageForClient(context, caseNo),
                  child: BlueContainerWidget(
                    title: 'Add Photo',
                    fontSize: 12,
                    color: themeColorBlue,
                    fontWeight: FontWeight.bold,
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                       warningShowDilogueBox(
                                context: context,
                                title: "Alert",
                                discripition:"Do you want to close this case.",
                                onPressed:()=>
                      clientManagementController.deActivateThisClient(
                      context: context,
                     clientName:clientName,
         caseNo: caseNo,
          mobileNo: mobileNo,
          emailID: emailID,
          gender: gender,
          dob: dob,
          marriageDate: marriageDate,
          typeofcase: typeofcase,
          address: address,
          casediscription: casediscription,
          clientoccupation:clientoccupation,
          oppositeadvocate: oppositeadvocate,
          typeofMarriage:typeofMarriage,
          noofChildren:noofChildren,
          seperationDate:seperationDate,
          enteredDate:enteredDate,
          state: state,
          enterBy:enterBy,
          whatsAppNo: whatsAppNo));
                    },
                    child: BlueContainerWidget(
                      title: 'Close Case',
                      fontSize: 12,
                      color: cred,
                      fontWeight: FontWeight.bold,
                      width: 120,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      );
    },
  );
}

class ShowDetailClientContainerWidget extends StatelessWidget {
  String title;
  String content;
  double height;
  double width;
  ShowDetailClientContainerWidget({
    required this.title,
    required this.content,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: themeColorBlue, width: 0.2)),
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: 150,
                decoration: BoxDecoration(color: cBlack.withOpacity(0.9)),
                child: Center(
                  child: GooglePoppinsWidgets(
                    text: title,
                    fontsize: 11,
                    fontWeight: FontWeight.w400,
                    color: cWhite,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 02,
                  decoration: const BoxDecoration(color: themeColorBlue),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 04, left: 100),
            child: GooglePoppinsWidgets(
              text: content,
              fontsize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
