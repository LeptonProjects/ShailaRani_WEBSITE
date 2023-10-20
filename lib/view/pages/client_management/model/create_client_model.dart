// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreateClientClassModel {
  String clientName;
  
  String mobileNo;
  String? whatsAppNo;
  String emailID;
  String gender;
  String dob;
  String marriageDate;
  String typeofcase;
  String clientoccupation;
  String address;
  String casediscription;
  String oppositeadvocate;
  String typeofMarriage;
  String? noofChildren;
  String seperationDate;
  String enteredDate;
  String enterBy;
  String state;
  int? index;
  CreateClientClassModel({
    required this.clientName,
    required this.mobileNo,
    this.whatsAppNo,
    required this.emailID,
    required this.gender,
    required this.dob,
    required this.marriageDate,
    required this.typeofcase,
    required this.clientoccupation,
    required this.address,
    required this.casediscription,
    required this.oppositeadvocate,
    required this.typeofMarriage,
    this.noofChildren,
    required this.seperationDate,
    required this.enteredDate,
    required this.enterBy,
    required this.state,
    this.index,
  });
  

  CreateClientClassModel copyWith({
    String? clientName,
    String? mobileNo,
    String? whatsAppNo,
    String? emailID,
    String? gender,
    String? dob,
    String? marriageDate,
    String? typeofcase,
    String? clientoccupation,
    String? address,
    String? casediscription,
    String? oppositeadvocate,
    String? typeofMarriage,
    String? noofChildren,
    String? seperationDate,
    String? enteredDate,
    String? enterBy,
    String? state,
    int? index,
  }) {
    return CreateClientClassModel(
      clientName: clientName ?? this.clientName,
      mobileNo: mobileNo ?? this.mobileNo,
      whatsAppNo: whatsAppNo ?? this.whatsAppNo,
      emailID: emailID ?? this.emailID,
      gender: gender ?? this.gender,
      dob: dob ?? this.dob,
      marriageDate: marriageDate ?? this.marriageDate,
      typeofcase: typeofcase ?? this.typeofcase,
      clientoccupation: clientoccupation ?? this.clientoccupation,
      address: address ?? this.address,
      casediscription: casediscription ?? this.casediscription,
      oppositeadvocate: oppositeadvocate ?? this.oppositeadvocate,
      typeofMarriage: typeofMarriage ?? this.typeofMarriage,
      noofChildren: noofChildren ?? this.noofChildren,
      seperationDate: seperationDate ?? this.seperationDate,
      enteredDate: enteredDate ?? this.enteredDate,
      enterBy: enterBy ?? this.enterBy,
      state: state ?? this.state,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientName': clientName,
      'mobileNo': mobileNo,
      'whatsAppNo': whatsAppNo,
      'emailID': emailID,
      'gender': gender,
      'dob': dob,
      'marriageDate': marriageDate,
      'typeofcase': typeofcase,
      'clientoccupation': clientoccupation,
      'address': address,
      'casediscription': casediscription,
      'oppositeadvocate': oppositeadvocate,
      'typeofMarriage': typeofMarriage,
      'noofChildren': noofChildren,
      'seperationDate': seperationDate,
      'enteredDate': enteredDate,
      'enterBy': enterBy,
      'state': state,
      'index': index,
    };
  }

  factory CreateClientClassModel.fromMap(Map<String, dynamic> map) {
    return CreateClientClassModel(
      clientName: map['clientName'] as String,
      mobileNo: map['mobileNo'] as String,
      whatsAppNo: map['whatsAppNo'] != null ? map['whatsAppNo'] as String : null,
      emailID: map['emailID'] as String,
      gender: map['gender'] as String,
      dob: map['dob'] as String,
      marriageDate: map['marriageDate'] as String,
      typeofcase: map['typeofcase'] as String,
      clientoccupation: map['clientoccupation'] as String,
      address: map['address'] as String,
      casediscription: map['casediscription'] as String,
      oppositeadvocate: map['oppositeadvocate'] as String,
      typeofMarriage: map['typeofMarriage'] as String,
      noofChildren: map['noofChildren'] != null ? map['noofChildren'] as String : null,
      seperationDate: map['seperationDate'] as String,
      enteredDate: map['enteredDate'] as String,
      enterBy: map['enterBy'] as String,
      state: map['state'] as String,
      index: map['index'] != null ? map['index'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateClientClassModel.fromJson(String source) => CreateClientClassModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CreateClientClassModel(clientName: $clientName, mobileNo: $mobileNo, whatsAppNo: $whatsAppNo, emailID: $emailID, gender: $gender, dob: $dob, marriageDate: $marriageDate, typeofcase: $typeofcase, clientoccupation: $clientoccupation, address: $address, casediscription: $casediscription, oppositeadvocate: $oppositeadvocate, typeofMarriage: $typeofMarriage, noofChildren: $noofChildren, seperationDate: $seperationDate, enteredDate: $enteredDate, enterBy: $enterBy, state: $state, index: $index)';
  }

  @override
  bool operator ==(covariant CreateClientClassModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.clientName == clientName &&
      other.mobileNo == mobileNo &&
      other.whatsAppNo == whatsAppNo &&
      other.emailID == emailID &&
      other.gender == gender &&
      other.dob == dob &&
      other.marriageDate == marriageDate &&
      other.typeofcase == typeofcase &&
      other.clientoccupation == clientoccupation &&
      other.address == address &&
      other.casediscription == casediscription &&
      other.oppositeadvocate == oppositeadvocate &&
      other.typeofMarriage == typeofMarriage &&
      other.noofChildren == noofChildren &&
      other.seperationDate == seperationDate &&
      other.enteredDate == enteredDate &&
      other.enterBy == enterBy &&
      other.state == state &&
      other.index == index;
  }

  @override
  int get hashCode {
    return clientName.hashCode ^
      mobileNo.hashCode ^
      whatsAppNo.hashCode ^
      emailID.hashCode ^
      gender.hashCode ^
      dob.hashCode ^
      marriageDate.hashCode ^
      typeofcase.hashCode ^
      clientoccupation.hashCode ^
      address.hashCode ^
      casediscription.hashCode ^
      oppositeadvocate.hashCode ^
      typeofMarriage.hashCode ^
      noofChildren.hashCode ^
      seperationDate.hashCode ^
      enteredDate.hashCode ^
      enterBy.hashCode ^
      state.hashCode ^
      index.hashCode;
  }
}
