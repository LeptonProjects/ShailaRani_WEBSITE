import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shaila_rani_website/view/constant/const.dart';

import 'package:shaila_rani_website/view/pages/staff_management/model/create_employee_model.dart';

class StaffManagementController extends GetxController {
  // For Selected Date
  RxString dobSelectedDate = ''.obs;
  RxString joiningSelectedDate = ''.obs;

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
        index: 0,
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
      await checkingIndexinCollection().then((value) async {
        await firebase
            .collection('Active')
            .doc(employeeID)
            .set(employeeDetails.toMap())
            .then((value) async {
          await firebase
              .collection('Active')
              .doc(employeeID)
              .update({'index': await addIndexToEmployee()});
        }).then((value) {
          showToast(msg: "Added Successfully");
          Navigator.pop(context);
        });
      });
    } catch (e) {}
  }

  Future<void> deActivateThisPerson({
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
    required String alMobileNo,
    required String whatsAppNo,

    required BuildContext context,
  }) async {
    try {
      CreateEmployeeClassModel employeeDetails = CreateEmployeeClassModel(
          index: 0,
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
      await firebase
          .collection('InActive')
          .doc(employeeID)
          .set(employeeDetails.toMap())
          .then((value) async {
        await firebase.collection('Active').doc(employeeID).delete();
      }).then((value) {
        showToast(msg: "DeActivated Successfully");
        Navigator.pop(context);
      });
    } catch (e) {}
  }

  Future<void> checkingIndexinCollection() async {
    DocumentSnapshot<Map<String, dynamic>> getingIndex = await firebase.get();
    final result = await getingIndex.data()?['index'];

    log("message   ${getingIndex.data()?['index']}");
    if (getingIndex.data()?['index'] == null) {
      await firebase.set({'index': 1});
    } else {
      await firebase.update({'index': result + 1});
    }
  }

  Future addIndexToEmployee() async {
    DocumentSnapshot<Map<String, dynamic>> getingIndex = await firebase.get();
    int index = 0;
    if (getingIndex.data()?['index'] == null) {
      await firebase.set({'index': 1});
    } else {
      int result = await getingIndex.data()!['index'];
      index = result;
    }

    return index;
  }

  Future<void> changeIndexEmployeeInFirebase(
      {required String docid,
      required int index,
      required BuildContext context}) async {
    await firebase
        .collection('Active')
        .doc(docid)
        .update({'index': index}).then((value) {
      showToast(msg: "Changed Successfully");
      Navigator.pop(context);
    });
  }
}
