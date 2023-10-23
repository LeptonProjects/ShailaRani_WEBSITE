import 'dart:developer';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shaila_rani_website/view/constant/const.dart';
import 'package:shaila_rani_website/view/pages/client_management/model/create_client_model.dart';
import 'package:uuid/uuid.dart';




class ClientManagementController extends GetxController {
   final FirebaseStorage _cstorage = FirebaseStorage.instance;
 String clientImageUrl = '';
  var isUploading = false.obs;
  // For Selected Date
  RxString dobSelectedDate =''.obs;
   RxString marriageSelectedDate =''.obs;
    RxString enteredSelectedDate =''.obs;
   RxString seperationSelectedDate =''.obs;
  Rxn<Uint8List>  imagePath = Rxn();
  final firebase = FirebaseFirestore.instance
      .collection('ClientManagement')
      .doc('ClientManagement');

  Future<void> addclientDetailsToSever({
    required String clientName,
    required String caseNo,
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
        caseNo: caseNo,
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
            .doc(caseNo)
            .set(clientDetails.toMap())
            .then((value) async {
          await firebase
              .collection('Cases')
              .doc(caseNo)
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
   required String caseNo,
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
  String? clientImage,
  required String state,

    required BuildContext context,
  }) async {
    try {
      CreateClientClassModel employeeDetails = CreateClientClassModel(
          index: 0,
          clientName:clientName,
         caseNo: caseNo,
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
          clientImage:clientImage,
          whatsAppNo: whatsAppNo);
      await firebase
          .collection('Closed Cases')
          .doc(caseNo)
          .set(employeeDetails.toMap())
          .then((value) async {
        await firebase.collection('Cases').doc(caseNo).delete();
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
  Future<void> uploadImage(Uint8List imagepath, String storagePath) async {
        final String uid = const Uuid().v1();
    isUploading(true);

    final ref = _cstorage
        .ref()
        .child('StaffMangement')
        .child('Images')
        .child('${uid}image.jpg');
    final uploadTask = ref.putData(imagepath);

    await uploadTask.whenComplete(() async {
      final String downloadURL = await ref.getDownloadURL();
      clientImageUrl = downloadURL;

      isUploading(false);

      showToast(msg: 'Image Uploaded Successfully');
      log("Getx Valuee --->>.$clientImageUrl");
    });
  }
}

//  Future<void> updateClientDetailsToServer({
//   required String clientName,
//   required String mobileNo,
//   required String whatsAppNo,
//   required String emailID,
//   required String gender,
//   required String dob,
//   required String marriageDate,
//   required String typeofcase,
//   required String clientoccupation,
//   required String address,
//   required String casediscription,
//   required String oppositeadvocate,
//   required String typeofMarriage,
//   required String noofChildren,
//   required String seperationDate,
//   required String enteredDate,
//   required String enterBy,
//   required String state,
// }) async {
//   final updateData = {
//     'clientName': clientName,
//     'mobileNo': mobileNo,
//     'whatsAppNo': whatsAppNo,
//     'emailID': emailID,
//     'gender': gender,
//     'dob': dob,
//     'marriageDate': marriageDate,
//     'typeofcase': typeofcase,
//     'clientoccupation': clientoccupation,
//     'address': address,
//     'casediscription': casediscription,
//     'oppositeadvocate': oppositeadvocate,
//     'typeofMarriage': typeofMarriage,
//     'noofChildren': noofChildren,
//     'seperationDate': seperationDate,
//     'enteredDate': enteredDate,
//     'state': state,
//     'enterBy': enterBy,
//   };

//   try {
    
//     await FirebaseFirestore.instance
//     .collection('ClientManagement')
//         .doc('ClientManagement')
//         .collection('Cases')
//         .doc(mobileNo)
//         .update(updateData);

//     showToast(msg: 'Updated');
//   } catch (e) {
//     print('Error: $e');
//   }
// }
