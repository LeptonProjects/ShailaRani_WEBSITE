import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

readmoreScreenPage(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: cBlack,
        title: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                height: 30,
                width: ResponsiveWebSite.isMobile(context) ? 40 : 70,
                decoration: BoxDecoration(
                  border: Border.all(color: cWhite),
                ),
                child: Center(
                  child: GooglePoppinsWidgets(
                    text: 'Back',
                    fontsize: ResponsiveWebSite.isMobile(context) ? 08 : 11,
                    color: cWhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveWebSite.isMobile(context) ? 20 : 50),
              child: GooglePoppinsWidgets(
                text: 'Adv. Shaila Rani',
                fontsize: ResponsiveWebSite.isMobile(context) ? 11 : 15,
                color: cWhite,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              SizedBox(
                height: ResponsiveWebSite.isMobile(context) ? 400 : 700,
                width: ResponsiveWebSite.isMobile(context) ? 400 : 700,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20,
                          bottom: ResponsiveWebSite.isMobile(context) ? 20 : 0),
                      child: SizedBox(
                          height:
                              ResponsiveWebSite.isMobile(context) ? 100 : 300,
                          width:
                              ResponsiveWebSite.isMobile(context) ? 100 : 250,
                          child: Image.asset(
                            "assests/images/shila_rani.jpeg",
                            fit: ResponsiveWebSite.isMobile(context)
                                ? BoxFit.cover
                                : BoxFit.fitWidth,
                          )),
                    ),
                    Expanded(
                      child: SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: SingleChildScrollView(
                              child: GooglePoppinsWidgets(
                                text:
                                    "Shila Rani & Associates is a prestigious multinational law firm specializing in family and divorce law. Founded and led by Advocate Shaila Rani, the firm has established itself as a leading authority in the field, providing expert legal services to individuals and families facing complex family and divorce-related issues worldwide. With a commitment to excellence, compassion, and professionalism, Rani & Associates has gained a reputation for resolving even the most intricate family law matters. "
                                    "Advocate Shaila Rani is a renowned legal expert with over two decades of experience in family and divorce law. She is widely recognized for her dedication to her clients and her deep understanding of the emotional and legal complexities involved in family disputes. Shaila Rani's leadership has been instrumental in shaping the firm's values and guiding it to international prominence.",
                                fontsize: ResponsiveWebSite.isMobile(context)
                                    ? 09
                                    : 15,
                                color: cWhite,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('ok'))
        ],
      );
    },
  );
}
