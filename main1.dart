import 'dart:io';
import 'package:intl/intl.dart';
import 'dashboard.dart';
import 'admintask.dart';
import 'template.dart';
import 'navigator.dart';
import 'timecard.dart';
import 'admininfo.dart';
import 'newuserinfo.dart';
import 'salaryreport.dart';

abstract class PersonalInfo {
  String? leaveDate;
  String? userName;
  String? password;
  String? firstName;
  String? lastName;
  String? dateOfBirth;
  String? gender;
  String? father;
  String? mother;
  String? designation;
  String? department;
  String? typeOfAccount;
  String? currentAddress;
  String? permanentAddress;
  String? email;
  int? contactNumber;
  String? highestEducation;
  String? languageKnown;
  String? primarySkills;
  String? secondarySkills;
  double? salary;
  String? leaveStatus;

  PersonalInfo(
      {required this.leaveDate,
      required this.leaveStatus,
      required this.salary,
      required this.userName,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.dateOfBirth,
      required this.gender,
      required this.father,
      required this.mother,
      required this.designation,
      required this.department,
      required this.typeOfAccount,
      required this.currentAddress,
      required this.permanentAddress,
      required this.email,
      required this.contactNumber,
      required this.highestEducation,
      required this.languageKnown,
      required this.primarySkills,
      required this.secondarySkills});
}

void main() {
  List employeeSystemList = [];
  final admin1 = AdminInfo(
    salary: 50000,
    userName: 'admin',
    password: '1234',
    firstName: 'Emmeline',
    lastName: 'Stark',
    dateOfBirth: 'January 1, 2001',
    gender: 'Female',
    father: 'Tony Stark',
    mother: 'Stephanie Strange',
    designation: 'Developer',
    department: 'IT',
    typeOfAccount: 'admin',
    currentAddress: 'Manila',
    permanentAddress: 'Manila',
    email: 'rdemmz@email.com',
    contactNumber: 09278888888,
    highestEducation: 'B.S. Computer Science',
    languageKnown: 'English',
    primarySkills: 'Flutter',
    secondarySkills: 'Python',
    leaveDate: 'none',
    leaveStatus: '',
  );
  employeeSystemList.add(admin1);

  final newUser1 = NewUserInfo(
      contactNumber: 09287777777,
      currentAddress: 'Stark Industries',
      dateOfBirth: 'April 12, 2010',
      department: 'Quantum Tech',
      designation: 'Scientist',
      email: 'tony@email.com',
      father: 'James Stark',
      firstName: 'Tony',
      gender: 'Male',
      highestEducation: 'Phd in Quantum Technology',
      languageKnown: 'English',
      lastName: 'Starks',
      mother: 'Stephanie Strange',
      password: '1234',
      permanentAddress: 'Stark Industries 2',
      primarySkills: 'Quantum Realm',
      secondarySkills: 'Robotics',
      typeOfAccount: 'new user',
      userName: 'tony',
      salary: 100000,
      leaveDate: 'none',
      leaveStatus: '');

  employeeSystemList.add(newUser1);

  final newUser2 = NewUserInfo(
      contactNumber: 09287777777,
      currentAddress: 'Strange Industries',
      dateOfBirth: 'December 29, 2010',
      department: 'AI Tech',
      designation: 'Director',
      email: 'carl@email.com',
      father: 'Perez',
      firstName: 'Carl',
      gender: 'Female',
      highestEducation: 'Phd in Strange technoology',
      languageKnown: 'English',
      lastName: 'Strange',
      mother: 'Emely Strange',
      password: '1234',
      permanentAddress: 'Strange Industries 2',
      primarySkills: 'Time Realm',
      secondarySkills: 'Quantum',
      typeOfAccount: ' new user',
      userName: 'carl',
      salary: 200000,
      leaveDate: 'none',
      leaveStatus: '');
  employeeSystemList.add(newUser2);
  bool outsideEms = true;

  while (outsideEms) {
    print('Welcome to Employee Management System.');
    print(
        'Don\'t have an account? Please type S to sign up or L to login or A for admin.');
    final String? noAccount = stdin.readLineSync();

    if (noAccount == 'A') {
      var loginUserName = AdminInfo.loginUserName();
      var loginPassword = AdminInfo.loginPassword();
      if (admin1.userName == loginUserName &&
          admin1.password == loginPassword) {
        print(admin1);

        bool insideEms = true;
        List weeklyTotalHoursWorkedList = [];
        List timeCardList = [];
        List newTimeCardInOut = [];

        while (insideEms) {
          String navigate = Navigator.useNavigator();

          if (navigate == 'D') {
            Dashboard.showNewsInDashboard();
            continue;
          } else if (navigate == 'T') {
            print(Dashboard.timeCardLogo);
            print('Week 1                Time In    Time Out');
            double day1_time =
                (TimeCard.getDifference('Monday    ', '07:00', '16:07'));
            double day2_time =
                (TimeCard.getDifference('Tuesday   ', '07:00', '16:07'));
            double day3_time =
                (TimeCard.getDifference('Wednesday ', '07:00', '16:07'));
            double day4_time =
                (TimeCard.getDifference('Thursday  ', '07:00', '16:08'));
            double day5_time =
                (TimeCard.getDifference('Friday    ', '07:00', '16:09'));
            timeCardList.add(day1_time);
            timeCardList.add(day2_time);
            timeCardList.add(day3_time);
            timeCardList.add(day4_time);
            timeCardList.add(day5_time);
            double totalHoursWorkedWeek1 =
                day1_time + day2_time + day3_time + day4_time + day5_time;
            print('\n');

            weeklyTotalHoursWorkedList.add(totalHoursWorkedWeek1);
            List newWeeklyTotalHoursWorkedList =
                weeklyTotalHoursWorkedList.toSet().toList();
            TimeCard.getTotalHoursWorkedWeekly(newWeeklyTotalHoursWorkedList);

            String navigate = Navigator.salaryReportUnderTimeCard();
            if (navigate == 'S') {
              Navigator.computeSalary(newWeeklyTotalHoursWorkedList, admin1);
              continue;
            } else if (navigate == 'E') {
              TimeCard.newTimeCard(timeCardList, weeklyTotalHoursWorkedList,
                  day1_time, day2_time, day3_time, day4_time, day5_time);
              continue;
            } else if (navigate == 'R') {
              continue;
            }
          } else if (navigate == 'L') {
            print(Dashboard.leaveRequestLogo);
            AdminTask.employeeLeaveRequest(admin1);
            continue;
          } else if (navigate == 'P') {
            print(Dashboard.profileLogo);
            print(admin1.toString());
          } else if (navigate == 'M') {
            print(Dashboard.employeesListLogo);
            for (int i = 0; i < employeeSystemList.length; i++) {
              print(employeeSystemList[i]);
              print('\n');
            }

            var change = AdminTask.adminDuties();
            if (change == 'L') {
              print('Leave Requests:\n'
                  'Name               Leave Date     \n'
                  '${admin1.firstName} ${admin1.lastName}     ${admin1.leaveDate}  ${admin1.leaveStatus}\n'
                  '${newUser1.firstName} ${newUser1.lastName}        ${newUser1.leaveDate}  ${newUser1.leaveStatus}\n'
                  '${newUser2.firstName} ${newUser2.lastName}       ${newUser2.leaveDate}  ${newUser2.leaveStatus}\n');

              bool leaveRequestLoop = true;
              while (leaveRequestLoop) {
                var reviewLeaveRequest = AdminTask.editLeaveRequest();
                if (reviewLeaveRequest == '0') {
                  AdminTask.approvedOrDeniedLeave(admin1);
                  continue;
                } else if (reviewLeaveRequest == '1') {
                  AdminTask.approvedOrDeniedLeave(newUser1);
                  continue;
                } else if (reviewLeaveRequest == '2') {
                  AdminTask.approvedOrDeniedLeave(newUser2);
                  continue;
                } else if (reviewLeaveRequest == 'R') {
                  break;
                }
              }
            }
          } else if (navigate == 'Q') {
            break;
          }
        }
      }
    } else if (noAccount == 'S') {
      print('Sign up');
      print('Enter your username.');
      final String? newUsername = stdin.readLineSync();
      print('Enter your password.');
      final String? newPassword = stdin.readLineSync();
      print('Enter your first Name.');
      final String? newFirstName = stdin.readLineSync();
      print('Enter your Last Name.');
      final String? newLastName = stdin.readLineSync();
      print('Enter your contact number.');
      final int? newContactNumber = int.parse(stdin.readLineSync()!);
      print('Enter your current address.');
      final String? newCurrentAddress = stdin.readLineSync();
      print('Enter your permanent address.');
      final String? newPermanentAddress = stdin.readLineSync();
      print('Enter your date of birth.');
      final String? newDateOfBirth = stdin.readLineSync();
      print('Enter your department.');
      final String? newDepartment = stdin.readLineSync();
      print('Enter your designation.');
      final String? newDesignation = stdin.readLineSync();
      print('Enter your email.');
      final String? newEmail = stdin.readLineSync();
      print('Enter your father\'s name.');
      final String? newFather = stdin.readLineSync();
      print('Enter your mother\'s name.');
      final String? newMother = stdin.readLineSync();
      print('Enter your gender.');
      final String? newGender = stdin.readLineSync();
      print('Enter your highest education.');
      final String? newHighestEducation = stdin.readLineSync();
      print('Enter your language known.');
      final String? newLanguageKnown = stdin.readLineSync();
      print('Enter your primary skill.');
      final String? newPrimarySkill = stdin.readLineSync();
      print('Enter your secondary skill.');
      final String? newSecondarySkill = stdin.readLineSync();
      print('Enter your salary.');
      final double? newSalary = double.parse(stdin.readLineSync()!);
      final newUser = NewUserInfo(
          contactNumber: newContactNumber,
          currentAddress: newCurrentAddress,
          dateOfBirth: newDateOfBirth,
          department: newDepartment,
          designation: newDesignation,
          email: newEmail,
          father: newFather,
          firstName: newFirstName,
          gender: newGender,
          highestEducation: newHighestEducation,
          languageKnown: newLanguageKnown,
          lastName: newLastName,
          mother: newMother,
          password: newPassword,
          permanentAddress: newPermanentAddress,
          primarySkills: newPrimarySkill,
          secondarySkills: newSecondarySkill,
          typeOfAccount: 'new user',
          userName: newUsername,
          salary: newSalary,
          leaveDate: 'none',
          leaveStatus: 'none');
      employeeSystemList.add(newUser);
      print('You have successfully signed up. Please login');
      continue;
    } else if (noAccount == 'L') {
      var loginUserName = AdminInfo.loginUserName();
      var loginPassword = AdminInfo.loginPassword();

      if (loginUserName == newUser1.userName &&
          loginPassword == newUser1.password) {
        print(newUser1);
        bool insideEms = true;
        List weeklyTotalHoursWorkedList = [];
        List timeCardList = [];

        while (insideEms) {
          String navigate = Navigator.useNavigator();

          if (navigate == 'D') {
            Dashboard.showNewsInDashboard();
            continue;
          } else if (navigate == 'T') {
            print(Dashboard.timeCardLogo);
            print('Week 1                Time In    Time Out');
            double day1_time =
                (TimeCard.getDifference('Monday    ', '06:00', '15:05'));
            double day2_time =
                (TimeCard.getDifference('Tuesday   ', '06:00', '15:06'));
            double day3_time =
                (TimeCard.getDifference('Wednesday ', '06:00', '15:07'));
            double day4_time =
                (TimeCard.getDifference('Thursday  ', '06:00', '15:08'));
            double day5_time =
                (TimeCard.getDifference('Friday    ', '06:00', '15:09'));

            double totalHoursWorkedWeek1 =
                day1_time + day2_time + day3_time + day4_time + day5_time;
            print('\n');

            weeklyTotalHoursWorkedList.add(totalHoursWorkedWeek1);
            List newWeeklyTotalHoursWorkedList =
                weeklyTotalHoursWorkedList.toSet().toList();
            TimeCard.getTotalHoursWorkedWeekly(newWeeklyTotalHoursWorkedList);

            String navigate = Navigator.salaryReportUnderTimeCard();
            if (navigate == 'S') {
              Navigator.computeSalary(newWeeklyTotalHoursWorkedList, newUser1);
              continue;
            } else if (navigate == 'E') {
              TimeCard.newTimeCard(timeCardList, weeklyTotalHoursWorkedList,
                  day1_time, day2_time, day3_time, day4_time, day5_time);

              continue;
            } else if (navigate == 'R') {
              continue;
            }
            continue;
          } else if (navigate == 'L') {
            print(Dashboard.leaveRequestLogo);
            AdminTask.employeeLeaveRequest(newUser1);
            continue;
          } else if (navigate == 'P') {
            print(Dashboard.profileLogo);
            print(newUser1.toString());
          } else if (navigate == 'Q') {
            break;
          }
        }
      } else if (loginUserName == newUser2.userName &&
          loginPassword == newUser2.password) {
        print(newUser2);
        bool insideEms = true;
        List weeklyTotalHoursWorkedList = [];
        List timeCardList = [];

        while (insideEms) {
          String navigate = Navigator.useNavigator();

          if (navigate == 'D') {
            Dashboard.showNewsInDashboard();
            continue;
          } else if (navigate == 'T') {
            print(Dashboard.timeCardLogo);
            print('Week 1                Time In    Time Out');
            double day1_time =
                (TimeCard.getDifference('Monday    ', '07:00', '15:05'));
            double day2_time =
                (TimeCard.getDifference('Tuesday   ', '07:00', '15:06'));
            double day3_time =
                (TimeCard.getDifference('Wednesday ', '07:00', '15:07'));
            double day4_time =
                (TimeCard.getDifference('Thursday  ', '07:00', '15:08'));
            double day5_time =
                (TimeCard.getDifference('Friday    ', '07:00', '15:09'));

            double totalHoursWorkedWeek1 =
                day1_time + day2_time + day3_time + day4_time + day5_time;
            print('\n');
            weeklyTotalHoursWorkedList.add(totalHoursWorkedWeek1);
            List newWeeklyTotalHoursWorkedList =
                weeklyTotalHoursWorkedList.toSet().toList();
            TimeCard.getTotalHoursWorkedWeekly(newWeeklyTotalHoursWorkedList);

            String navigate = Navigator.salaryReportUnderTimeCard();
            if (navigate == 'S') {
              Navigator.computeSalary(newWeeklyTotalHoursWorkedList, newUser2);
              continue;
            } else if (navigate == 'E') {
              TimeCard.newTimeCard(timeCardList, weeklyTotalHoursWorkedList,
                  day1_time, day2_time, day3_time, day4_time, day5_time);

              continue;
            } else if (navigate == 'R') {
              continue;
            }
            continue;
          } else if (navigate == 'L') {
            print(Dashboard.leaveRequestLogo);
            AdminTask.employeeLeaveRequest(newUser2);
            continue;
          } else if (navigate == 'P') {
            print(Dashboard.profileLogo);
            print(newUser2.toString());
          } else if (navigate == 'Q') {
            break;
          }
        }
      } else if (loginUserName == employeeSystemList[3].userName &&
          loginPassword == employeeSystemList[3].password) {
        Template.newUserTemplate(employeeSystemList, 3);
      } else if (loginUserName == employeeSystemList[4].userName &&
          loginPassword == employeeSystemList[4].password) {
        Template.newUserTemplate(employeeSystemList, 4);
      } else if (loginUserName == employeeSystemList[5].userName &&
          loginPassword == employeeSystemList[5].password) {
        Template.newUserTemplate(employeeSystemList, 5);
      }
    }
  }
}
