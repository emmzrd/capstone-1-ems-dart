import 'main1.dart';
import 'dart:io';
class AdminInfo implements PersonalInfo {
  @override
  int? contactNumber;

  @override
  String? currentAddress;

  @override
  String? dateOfBirth;

  @override
  String? department;

  @override
  String? designation;

  @override
  String? email;

  @override
  String? father;

  @override
  String? firstName;

  @override
  String? gender;

  @override
  String? highestEducation;

  @override
  String? languageKnown;

  @override
  String? lastName;

  @override
  String? mother;

  @override
  String? password;

  @override
  String? permanentAddress;

  @override
  String? primarySkills;

  @override
  String? secondarySkills;

  @override
  String? typeOfAccount = 'admin';

  @override
  String? userName;
  @override
  double? salary;

  AdminInfo(
      {required this.leaveDate,
        required this.leaveStatus,
        required this.contactNumber,
        required this.currentAddress,
        required this.dateOfBirth,
        required this.department,
        required this.designation,
        required this.email,
        required this.father,
        required this.firstName,
        required this.gender,
        required this.highestEducation,
        required this.languageKnown,
        required this.lastName,
        required this.mother,
        required this.password,
        required this.permanentAddress,
        required this.primarySkills,
        required this.secondarySkills,
        required this.typeOfAccount,
        required this.userName,
        required this.salary});

  @override
  String toString() {
    return 'Personal Profile: \n'
        'First Name: $firstName \n'
        'Last Name: $lastName \n'
        'Designation: $designation \n'
        'Salary: $salary \n'
        'Department: $department \n'
        'Date of Birth: $dateOfBirth \n'
        'Gender: $gender \n'
        'Highest Education: $highestEducation \n'
        'Email: $email \n'
        'Contact Number: $contactNumber \n'
        'Current Address: $currentAddress \n'
        'Permanent Address: $permanentAddress \n'
        'Primary Skills: $primarySkills \n'
        'Secondary Skills: $secondarySkills \n'
        'Father: $father \n'
        'Mother: $mother \n'
        'Language Known: $languageKnown \n'
        'User Name: $userName \n'
        'Password: $password \n'
        'Type of Account: $typeOfAccount \n'
        'Leave Date: $leaveDate\n'
        'Leave Status: $leaveStatus\n';
  }

  static String? loginUserName() {
    print('Please Login');
    print('Enter your username.');
    final String? loginUsername = stdin.readLineSync();
    return '$loginUsername';
  }

  static String? loginPassword() {
    print('Enter your password.');
    final String? loginPassword = stdin.readLineSync();
    return '$loginPassword';
  }

  @override
  String? leaveStatus;

  @override
  String? leaveDate;
}