import 'package:flutter/material.dart';
import 'package:joy_dropdowns/joy_dropdowns.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/home/widgets/hover_mouse/hover_text.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

class ServicesDropDownList extends StatelessWidget {
  const ServicesDropDownList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return JoyDropDown(
      overlayHeight: 500,
      overlayWidth: 200,
      overlayOffset: const Offset(0, 5),
      overlayPosition: JoyOverlayPosition.bottom,
      overlayWidget: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: sevicesList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: GooglePoppinsWidgets(
                  text: "•  ${sevicesList[index]}",
                  fontsize: 10,
                  fontWeight: FontWeight.w200,
                  color: cWhite,
                ),
              );
            },
          ),
        ),
      ),
      child: OnHoverTextForHeader(
        builder: (isHoverd) {
                   final colorr = isHoverd
                    ? const Color.fromARGB(255, 192, 145, 128)
                    : cWhite;
          return Center(
            child: GooglePoppinsWidgets(
              text: "Services",
              fontsize: 12,
              color: colorr,
            ),
          );
        }
      ),
    );
  }
}

serivesdropDownList(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
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
                text: 'Our Services',
                fontsize: ResponsiveWebSite.isMobile(context) ? 14 : 15,
                color: cWhite,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        content: Container(
          height: 400,
          width: 400,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: sevicesList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: GooglePoppinsWidgets(
                  text: "•  ${sevicesList[index]}",
                  fontsize: 12,
                  fontWeight: FontWeight.w200,
                  color: cWhite,
                ),
              );
            },
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

List<String> sevicesList = [
  'Criminal Law',
  'Divorce Attorneys',
  'Document Verification',
  'Domestic Violence',
  'Family Counselling',
  'Family Counsellors',
  'Family Courts',
  'Family Law',
  'Family Lawyers',
  'Labour Laws',
  'Legal Advice',
  'Legal Advisor',
  'Legal Aid',
  'Legal Assistance',
  'Legal Education',
  'Legal Help',
  'Legal Studies',
  'Marital Counselling',
  'Marriage Law',
  'Matrimonial Law',
  'Money Suits',
  'Mutual Divorce',
  'Personal Laws',
  'Property Dispute',
  'Registration of Documents',
  'Workmen Compensation',
  '''Workers' compensation litigation''',
  'Landlord and tenant litigation',
  'Civil rights litigation',
  'Accident Claims Cases',
  'Alternate Dispute Resolution',
  'Anticipatory Bail',
  'Boundary Disputes',
  'Cheque Cases',
  'Children Custody',
  'Civil Cases',
  'Commercial Laws',
  'Consumer Protection Cases',
  'Contested Divorce',
];
