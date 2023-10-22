// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shaila_rani_website/samplelist.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';

import 'package:shaila_rani_website/view/fonts/google_poppins.dart';

import 'package:shaila_rani_website/view/widgets/back_button/back_button_widget.dart';

import 'package:shaila_rani_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

createArticle(BuildContext context) {
  TextEditingController articleNameController = TextEditingController();
  // TextEditingController employeeIDController = TextEditingController();
  TextEditingController articleSubtitleController = TextEditingController();
  TextEditingController articleDescriptionController = TextEditingController();

  Future<String> pickDocument() async {
    log('message');
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'txt']);
    if (result != null) {
      PlatformFile file = result.files.first;

      // Process the selected file (e.g., save, upload, or display it)
      print('File path: ${file.bytes}');

      print('File name: ${file.name}');
      return file.name;
    } else {
      // User canceled the file picker
      log('hey');
      return '';
    }
  }

  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: 'CREATE NEW ARTICLE',
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
                width: 1000,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          tt = await pickDocument();
                          final scaffoldMessenger =
                              ScaffoldMessenger.of(context);
                          scaffoldMessenger.showSnackBar(SnackBar(
                              content: Text('$tt Selected!'),
                              action: SnackBarAction(
                                label: 'OK',
                                onPressed: () {
                                  addToFirebase();
                                  scaffoldMessenger.hideCurrentSnackBar();
                                },
                              )));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: cBlue),
                          height: 40,
                          width: 140,
                          child: Center(
                            child: GooglePoppinsWidgets(
                              text: 'Add Article',
                              fontsize: 12,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ),
                      (tt != '') ? Text(tt) : SizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormFiledContainerWidget(
                              controller: articleNameController,
                              hintText: "Enter Article Title",
                              title: "Article Title",
                              width: 300),
                          TextFormFiledContainerWidget(
                              controller: articleSubtitleController,
                              hintText: "Enter Article Subtitle",
                              title: "Article Subtitle",
                              width: 300),
                          TextFormFiledContainerWidget(
                              autofillHints: const ['asdasd'],
                              controller: articleDescriptionController,
                              hintText: "Enter Article Description",
                              title: "Article Description",
                              width: 300),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          samp.add('1');
                          samp.add('the stalker short film script.txt');
                          samp.add('Article 1');
                          samp.add('Article Sub');
                          samp.add('Article Des');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: cBlue),
                          height: 40,
                          width: 140,
                          child: Center(
                            child: GooglePoppinsWidgets(
                              text: 'Add',
                              fontsize: 12,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      );
    },
  );
}

addToFirebase() {
  FirebaseFirestore.instance
      .collection('ArticleManagement')
      .doc('rg')
      .set({'gr': 2});
}

String tt = '';

List<String> listofGender = [
  'Male',
  'Female',
  'Other',
];
List<String> listofState = [
  'Andhra Pradesh',
  'Arunachal Pradesh',
  'Assam',
  'Bihar',
  'Chhattisgarh',
  'Delhi',
  'Goa',
  'Gujarat',
  'Haryana',
  'Himachal Pradesh',
  'Jammu & Kashmir',
  'Jharkhand',
  'Karnataka',
  'Kerala',
  'Ladakh',
  'Madhya Pradesh',
  'Maharashra',
  'Manipur',
  'Meghalaya',
  'Mizoram',
  'Nagaland',
  'Odisha',
  'Puducherry(Pondicherry)',
  'Punjab',
  'Rajasthan',
  'Sikkim',
  'Tamil Nadu',
  'Telangana',
  'Tripura',
  'Uttar Pradesh',
  'Uttarakhand',
  'West Bengal',
];
