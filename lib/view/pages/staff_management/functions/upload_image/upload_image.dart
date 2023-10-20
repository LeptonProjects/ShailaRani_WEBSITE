import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
// import 'package:shaila_rani_website/view/pages/staff_management/controller/employee_controller.dart';
import 'package:shaila_rani_website/view/widgets/back_button/back_button_widget.dart';

uploadImageForStaff(BuildContext context) {
  // File? imagePath;
  // StaffManagementController staffManagementController =
  //   Get.put(StaffManagementController());

  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: 'UPLOAD IMAGE FOR THIS PERSON',
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
                height: 300,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      child: IconButton(
                          onPressed: () async {
                            ppickImage();
                            // final input =
                            //     querySelector('#imageInput') as InputElement;
                            // input.click();
                          },
                          icon: const Icon(Icons.camera_alt_outlined)),
                    ),
                    GestureDetector(
                      onTap: () async {},
                      child: Container(
                        height: 32,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: themeColorBlue,
                        ),
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: 'U P L O A D',
                              color: cWhite,
                              fontsize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

void ppickImage() {
  final FileUploadInputElement input = FileUploadInputElement();
  input.accept = 'image/*'; // Allow only image files
  input.click();

  input.onChange.listen((e) {
    final files = input.files;
    if (files!.length == 1) {
      final file = files[0];
      final reader = FileReader();
      reader.onLoad.listen((e) {
        final result = reader.result;
        // Process the selected image. 'result' contains the image data.
        print('Selected image: $result');
      });
      reader.readAsArrayBuffer(file);
      log('Selected image: ${file.name}');
    }
  });
}
