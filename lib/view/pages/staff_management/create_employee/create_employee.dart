// ignore_for_file: must_be_immutable

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';

import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/pages/staff_management/controller/employee_controller.dart';
import 'package:shaila_rani_website/view/widgets/back_button_widget.dart';
import 'package:shaila_rani_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

createEmployee(BuildContext context) {
  StaffManagementController staffController =
      Get.put(StaffManagementController());
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: 'CREATE EMPLOYEES',
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
                height: 500,
                width: 1000,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFiledContainerWidget(
                            hintText: "Enter Employee Full Name",
                            title: "Full Name",
                            width: 300),
                        TextFormFiledContainerWidget(
                            hintText: "Mobile No.",
                            title: "Enter Mobile No.",
                            width: 300),
                        TextFormFiledContainerWidget(
                            hintText: "WhatsApp No.",
                            title: "Enter WhatsApp No.",
                            width: 300),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFiledContainerWidget(
                            hintText: "Enter Employee Email ID.",
                            title: "Email ID.",
                            width: 300),
                        SizedBox(
                          height: 60,
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GooglePoppinsWidgets(
                                  text: 'Gender', fontsize: 12),
                              SizedBox(
                                  height: 35,
                                  width: 300,
                                  child: Center(
                                    child: DropdownSearch(
                                      dropdownDecoratorProps:
                                          DropDownDecoratorProps(
                                              baseStyle: GoogleFonts.poppins(
                                                  fontSize: 13,
                                                  color: Colors.black
                                                      .withOpacity(0.7))),
                                      selectedItem: 'Please Select Gender',
                                      // popupProps: const PopupProps.menu(),

                                      items: listofGender,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        TextFormFiledContainerWidget(
                            hintText: "DOB", title: "DOB", width: 300),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFiledContainerWidget(
                            title: "Date of Joining",
                            hintText: "Email ID.",
                            width: 300),
                        TextFormFiledContainerWidget(
                            title: "Assign Roles",
                            hintText: "Enter Mobile No.",
                            width: 300),
                        TextFormFiledContainerWidget(
                            title: "Alternate Mobile No.",
                            hintText: "Enter Alternate Mobile No.",
                            width: 300),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormFiledContainerWidget(
                            title: "Address Line 1",
                            hintText: "Enter Door No.,Street,Area...",
                            width: 300),
                        TextFormFiledContainerWidget(
                            title: "City",
                            hintText: "Enter City Name",
                            width: 300),
                        TextFormFiledContainerWidget(
                            title: "District",
                            hintText: "Enter District Name",
                            width: 300),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GooglePoppinsWidgets(
                              text: 'Select State/Province', fontsize: 12),
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: Center(
                                child: DropdownSearch(
                                  dropdownDecoratorProps:
                                      DropDownDecoratorProps(
                                          baseStyle: GoogleFonts.poppins(
                                              fontSize: 13,
                                              color: Colors.black
                                                  .withOpacity(0.7))),
                                  selectedItem: 'All States',
                                  items: listofState,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          staffController.addemployeeDetailsToSever(
                              employeeName: 'adrg',
                              employeeID: 'asdf',
                              mobileNo: 'asdf',
                              emailID: 'asdf',
                              gender: 'sdf',
                              dob: 'sdf',
                              joiningDate: 'sDF',
                              assignRole: 'sDF',
                              address: 'sdf',
                              city: 'SDF',
                              district: 'sdf',
                              state: 'sdf',
                              context: context);
                        },
                        child: Container(
                          height: 40,
                          width: 250,
                          decoration: const BoxDecoration(
                            color: themeColorBlue,
                          ),
                          child: Center(
                            child: GooglePoppinsWidgets(
                                text: 'Add Employee',
                                color: cWhite,
                                fontsize: 12,
                                fontWeight: FontWeight.w500),
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
      );
    },
  );
}

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
