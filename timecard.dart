import 'dart:io';
import 'main1.dart';
import 'package:intl/intl.dart';
import 'admininfo.dart';

class TimeCard implements AdminInfo, PersonalInfo {
  String? mondayIn;
  String? mondayOut;
  String? tuesdayIn;
  String? tuesdayOut;
  String? wednesdayIn;
  String? wednesdayOut;
  String? thursdayIn;
  String? thursdayOut;
  String? fridayIn;
  String? fridayOut;

  TimeCard(
      {required this.mondayIn,
        required this.mondayOut,
        required this.tuesdayIn,
        required this.tuesdayOut,
        required this.wednesdayIn,
        required this.wednesdayOut,
        required this.thursdayIn,
        required this.thursdayOut,
        required this.fridayIn,
        required this.fridayOut});

  @override
  String toString() {
    return 'TimeCard: \n'
        'Day          Time In     Time Out\n'
        'Monday       $mondayIn       $mondayOut\n'
        'Tuesday      $tuesdayIn       $tuesdayOut\n'
        'Wednesday    $wednesdayIn       $wednesdayOut\n'
        'Thursday     $thursdayIn       $thursdayOut\n'
        'Friday       $fridayIn       $fridayOut\n';
  }

  static void getTotalHoursWorkedWeekly(newWeeklyTotalHoursWorkedList) {
    for (int i = 0; i < newWeeklyTotalHoursWorkedList.length; i++) {
      print(
          'Week ${i + 1} total hours worked: ${newWeeklyTotalHoursWorkedList[i]}\n');
    }
  }

  static double getDifference(
      day,
      timeIn,
      String timeOut,
      ) {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    var _date = dateFormat.format(DateTime.now());
    DateTime a = DateTime.parse('$_date $timeIn');
    DateTime b = DateTime.parse('$_date $timeOut');
    // print('a $a');
    // print('b $b');
    // print('${b.difference(a).inHours}');
    // print('${b.difference(a).inSeconds}');
    // print('${b.difference(a).inMinutes}');
    print('$day:           $timeIn      $timeOut');
    double convertDurationDouble = b.difference(a).inMinutes.toDouble();
    double durationInHours = (convertDurationDouble / 60);
    return (durationInHours);
  }

  static String? showDuration(
      day1_time, day2_time, day3_time, day4_time, day5_time) {
    return 'Duration of Hours Worked:\n'
        'Week         Hours Worked\n'
        'Monday       $day1_time\n'
        'Tuesday      $day2_time\n'
        'Wednesday    $day3_time\n'
        'Thursday     $day4_time\n'
        'Friday       $day5_time\n';
  }

  static newTimeCard(timeCardList, weeklyTotalHoursWorkedList, day1_time,
      day2_time, day3_time, day4_time, day5_time) {
    print('Current Week ');
    print('Enter Monday Time In: ');
    String? currentWeekDay1In = stdin.readLineSync();
    print('Enter Monday Time Out: ');
    String? currentWeekDay1Out = stdin.readLineSync();
    print('Enter Tuesday Time In: ');
    String? currentWeekDay2In = stdin.readLineSync();
    print('Enter Tuesday Time Out:');
    String? currentWeekDay2Out = stdin.readLineSync();
    print('Enter Wednesday Time In: ');
    String? currentWeekDay3In = stdin.readLineSync();
    print('Enter Wednesday Time Out:');
    String? currentWeekDay3Out = stdin.readLineSync();
    print('Enter Thursday Time In: ');
    String? currentWeekDay4In = stdin.readLineSync();
    print('Enter Thursday Time Out:');
    String? currentWeekDay4Out = stdin.readLineSync();
    print('Enter Friday Time In: ');
    String? currentWeekDay5In = stdin.readLineSync();
    print('Enter Friday Time Out:');
    String? currentWeekDay5Out = stdin.readLineSync();
    print('Current Week');
    double day6_time = (TimeCard.getDifference(
        'Monday    ', currentWeekDay1In, currentWeekDay1Out!));
    double day7_time = (TimeCard.getDifference(
        'Tuesday   ', currentWeekDay2In, currentWeekDay2Out!));
    double day8_time = (TimeCard.getDifference(
        'Wednesday ', currentWeekDay3In, currentWeekDay3Out!));
    double day9_time = (TimeCard.getDifference(
        'Thursday  ', currentWeekDay4In, currentWeekDay4Out!));
    double day10_time = (TimeCard.getDifference(
        'Friday    ', currentWeekDay5In, currentWeekDay5Out!));
    print('\n');
    final newTimeCard = TimeCard(
        mondayIn: currentWeekDay1In,
        mondayOut: currentWeekDay1Out,
        tuesdayIn: currentWeekDay2In,
        tuesdayOut: currentWeekDay2Out,
        wednesdayIn: currentWeekDay3In,
        wednesdayOut: currentWeekDay3Out,
        thursdayIn: currentWeekDay4In,
        thursdayOut: currentWeekDay4Out,
        fridayIn: currentWeekDay5In,
        fridayOut: currentWeekDay5Out);

    timeCardList.add(day6_time);
    timeCardList.add(day7_time);
    timeCardList.add(day8_time);
    timeCardList.add(day9_time);
    timeCardList.add(day10_time);

    print('Week 1');
    print(TimeCard.showDuration(
        day1_time, day2_time, day3_time, day4_time, day5_time));
    print('Week 2');
    print(TimeCard.showDuration(
        day6_time, day7_time, day8_time, day9_time, day10_time));

    double totalHoursWorkedWeek1 =
        day6_time + day7_time + day8_time + day9_time + day10_time;

    weeklyTotalHoursWorkedList.add(totalHoursWorkedWeek1);
    return newTimeCard;
  }

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
  double? salary;

  @override
  String? secondarySkills;

  @override
  String? typeOfAccount;

  @override
  String? userName;

  @override
  String? leaveStatus;

  @override
  String? leaveDate;
}