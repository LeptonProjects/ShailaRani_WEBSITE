// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';

import '../../colors/colors.dart';

class TextFormFiledContainerWidget extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final double width;
  Function(String)? onChanged;
  Iterable<String>?autofillHints;
  String? Function(String?)? validator;
   Function()? onTap;
  TextInputType? keyboardType;
  TextFormFiledContainerWidget({
    required this.hintText,
    required this.title,
    required this.width,
    this.keyboardType,
    this.controller,
    this.autofillHints,
    this.onChanged,

    this.onTap,
  
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GooglePoppinsWidgets(text: title, fontsize: 12),
          SizedBox(
            height: 35,
            width: width,
            child: TextFormField(
              onChanged:onChanged ,
              autofillHints:autofillHints ,
              onTap: onTap,
              validator: validator,
              keyboardType: keyboardType,
              controller: controller,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8.0),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 0.4)),
                hintStyle: const TextStyle(fontSize: 13),
                hintText: hintText,
                focusedBorder: const OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 1, color: cGreen),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
