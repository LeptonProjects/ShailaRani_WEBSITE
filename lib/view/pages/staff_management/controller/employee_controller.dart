import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shaila_rani_website/view/constant/const.dart';
import 'package:shaila_rani_website/view/pages/staff_management/model/create_employee_model.dart';

class StaffManagementController extends GetxController {
  final firebase = FirebaseFirestore.instance
      .collection('StaffManagement')
      .doc('StaffManagement');

  Future<void> addemployeeDetailsToSever({
    required String employeeName,
    required String employeeID,
    required String mobileNo,
    required String emailID,
    required String gender,
    required String dob,
    required String joiningDate,
    required String assignRole,
    required String address,
    required String city,
    required String district,
    required String state,
    String? alMobileNo,
    String? whatsAppNo,
    required BuildContext context,
  }) async {
    CreateEmployeeClassModel employeeDetails = CreateEmployeeClassModel(
        employeeName: employeeName,
        employeeID: employeeID,
        mobileNo: mobileNo,
        emailID: emailID,
        gender: gender,
        dob: dob,
        joiningDate: joiningDate,
        assignRole: assignRole,
        address: address,
        city: city,
        district: district,
        state: state,
        alMobileNo: alMobileNo,
        whatsAppNo: whatsAppNo);

    /// Adding details to firebase
    try {
      await firebase
          .collection('Active')
          .doc(employeeID)
          .set(employeeDetails.toMap())
          .then((value) {
        showToast(msg: "Added Successfully");
        Navigator.pop(context);
      });
    } catch (e) {}
  }
}
