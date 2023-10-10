// ignore_for_file: must_be_immutable

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/pages/staff_management/create_employee/create_employee.dart';
import 'package:shaila_rani_website/view/pages/staff_management/employee_list_screen.dart';
import 'package:shaila_rani_website/view/pages/staff_management/widget/headerText_widget.dart';
class StaffHomeScreen extends StatelessWidget {
  const StaffHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 850,
      color: cGrey.withOpacity(0.1),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: GooglePoppinsWidgets(
                          text: 'EMPLOYEES DETAILS',
                          fontsize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: GestureDetector(
                        onTap: () => createEmployee(context),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: cBlue),
                          height: 40,
                          width: 140,
                          child: Center(
                            child: GooglePoppinsWidgets(
                              text: 'Create Employee',
                              fontsize: 12,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
             
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                color: cWhite,
                child: const Column(
                  children: [
                    EmployeeListHeaderWidget(), // DropDown --- Active List / In Active
                    ListOFStaffScreen()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EmployeeListHeaderWidget extends StatelessWidget {
  const EmployeeListHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                child: SizedBox(
                    height: 40,
                    width: 200,
                    child: DropdownSearch(
                      selectedItem: 'Active',
                      items: const ['Active', 'In Active/Checked-out'],
                    )),
              ),
            ],
          ), //
          Container(
            height: 45,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                border: Border.all(color: cGrey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: HeaderRowTextWidget(
                    title: 'No',
                  ),
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[5],
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[0],
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[1],
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[2],
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[3],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: HeaderRowTextWidget(
                    title: clientSecTe[4],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> clientSecTe = [
  'Employee Name',
  'Assigned Roles',
  'Mobile No',
  'Email Id',
  'Date of Joining',
  'Employee ID',
];
