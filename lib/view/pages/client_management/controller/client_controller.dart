import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shaila_rani_website/view/constant/const.dart';
import 'package:shaila_rani_website/view/pages/client_management/model/create_client_model.dart';




class ClientManagementController extends GetxController {

  // For Selected Date
  RxString dobSelectedDate =''.obs;
   RxString marriageSelectedDate =''.obs;
    RxString enteredSelectedDate =''.obs;
   RxString seperationSelectedDate =''.obs;

  final firebase = FirebaseFirestore.instance
      .collection('ClientManagement')
      .doc('ClientManagement');

  Future<void> addclientDetailsToSever({
    required String clientName,
    
    required String mobileNo,
    required String emailID,
    required String gender,
    required String dob,
    required String marriageDate,
    required String typeofcase,
    required String address,
    required String casediscription,
    required String oppositeadvocate,
    required String state,
    required String typeofMarriage,
    required String seperationDate,
     String? noofChildren,
    required String enteredDate,
    required String enterBy,
   required String  clientoccupation,
    String? whatsAppNo,
    required BuildContext context,
  }) async {
    CreateClientClassModel clientDetails = CreateClientClassModel(
        clientName: clientName,
        index:0,
        mobileNo: mobileNo,
        emailID: emailID,
        gender: gender,
        dob: dob,
        marriageDate: marriageDate,
        typeofcase: typeofcase,
        address: address,
        casediscription: casediscription,
        oppositeadvocate: oppositeadvocate,
        state: state,
        typeofMarriage: typeofMarriage,
        seperationDate: seperationDate,
        noofChildren: noofChildren,
        enteredDate: enteredDate,
        enterBy: enterBy,
        clientoccupation:  clientoccupation,
        whatsAppNo: whatsAppNo);

    /// Adding details to firebase
   try {
      await checkingIndexinCollection().then((value) async {
        await firebase
            .collection('Cases')
            .doc(mobileNo)
            .set(clientDetails.toMap())
            .then((value) async {
          await firebase
              .collection('Cases')
              .doc(mobileNo)
              .update({'index': await addIndexToClient()});
        }).then((value) {
          showToast(msg: "Added Successfully");
          Navigator.pop(context);
        });
      });
    } catch (e) {}
  }

  Future<void> deActivateThisClient({
    required String clientName,
  // required String employeeID,
  required String mobileNo,
  required String whatsAppNo,
  required String emailID,
  required String gender,
  required String dob,
  required String marriageDate,
  required String typeofcase,
  required String clientoccupation,
  required String address,
  required String casediscription,
  required String oppositeadvocate,
  required String typeofMarriage,
  required String noofChildren,
  required String seperationDate,
  required String enteredDate,
  required String enterBy,
  required String state,

    required BuildContext context,
  }) async {
    try {
      CreateClientClassModel employeeDetails = CreateClientClassModel(
          index: 0,
          clientName:clientName,
         
          mobileNo: mobileNo,
          emailID: emailID,
          gender: gender,
          dob: dob,
          marriageDate: marriageDate,
          typeofcase: typeofcase,
          address: address,
          casediscription: casediscription,
          clientoccupation:clientoccupation,
          oppositeadvocate: oppositeadvocate,
          typeofMarriage:typeofMarriage,
          noofChildren:noofChildren,
          seperationDate:seperationDate,
          enteredDate:enteredDate,
          state: state,
          enterBy:enterBy,
          whatsAppNo: whatsAppNo);
      await firebase
          .collection('Closed Cases')
          .doc(mobileNo)
          .set(employeeDetails.toMap())
          .then((value) async {
        await firebase.collection('Cases').doc(mobileNo).delete();
      }).then((value) {
        showToast(msg: "Closed Successfully");
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

  Future addIndexToClient() async {
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

  Future<void> changeIndexClientInFirebase(
      {required String docid,
      required int index,
      required BuildContext context}) async {
    await firebase
        .collection('Cases')
        .doc(docid)
        .update({'index': index}).then((value) {
      showToast(msg: "Changed Successfully");
      Navigator.pop(context);
    });
  }
}

