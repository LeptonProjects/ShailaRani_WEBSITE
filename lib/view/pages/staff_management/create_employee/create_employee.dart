import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/widgets/back_button_widget.dart';

createEmployee(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(text: 'CREATE EMPLOYEES', fontsize: 12),
            const BackButtonContainerWidget(),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              SizedBox(
                height: 500,
                width: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          
                          decoration:
                              BoxDecoration(border: Border.all(color: cBlack)),
                          height: 40,
                          width: 200,
                          child: Center(child: TextFormField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 13.0),
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                      border: InputBorder.none,
                      hintText: 'Search artist, genre, playlist',
                      hintStyle: TextStyle(fontSize: 11.0)),
                ),),
                        )
                      ],
                    )
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
