import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shaila_rani_website/view/constant/const.dart';
import 'package:shaila_rani_website/view/pages/client_management/model/create_client_model.dart';




class ClientManagementController extends GetxController {

  // For Selected Date
  RxString dobSelectedDate =''.obs;
   RxString marriageSelectedDate =''.obs;
    RxString enteredDateSelectedDate =''.obs;


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
      await firebase
          .collection('Active')
          .doc(emailID)
          .set(clientDetails.toMap())
          .then((value) {
        showToast(msg: "Added Successfully");
        Navigator.pop(context);
      });
    } catch (e) {}
  }
}
