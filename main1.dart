import 'dart:io';
import 'package:intl/intl.dart';

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

class NewUserInfo implements PersonalInfo {
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
  String? typeOfAccount = 'newUser';

  @override
  String? userName;

  @override
  double? salary;

  NewUserInfo(
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

  static String? loginUserName() {
    print('Please Sign Up');
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

  @override
  String? leaveStatus;

  @override
  String? leaveDate;
}

class Dashboard {
  static String employeesListLogo = ''' 
  
███████╗███╗░░░███╗██████╗░██╗░░░░░░█████╗░██╗░░░██╗███████╗███████╗░██████╗        ██╗░░░░░██╗░██████╗████████╗
██╔════╝████╗░████║██╔══██╗██║░░░░░██╔══██╗╚██╗░██╔╝██╔════╝██╔════╝██╔════╝        ██║░░░░░██║██╔════╝╚══██╔══╝
█████╗░░██╔████╔██║██████╔╝██║░░░░░██║░░██║░╚████╔╝░█████╗░░█████╗░░╚█████╗░        ██║░░░░░██║╚█████╗░░░░██║░░░
██╔══╝░░██║╚██╔╝██║██╔═══╝░██║░░░░░██║░░██║░░╚██╔╝░░██╔══╝░░██╔══╝░░░╚═══██╗        ██║░░░░░██║░╚═══██╗░░░██║░░░
███████╗██║░╚═╝░██║██║░░░░░███████╗╚█████╔╝░░░██║░░░███████╗███████╗██████╔╝        ███████╗██║██████╔╝░░░██║░░░
╚══════╝╚═╝░░░░░╚═╝╚═╝░░░░░╚══════╝░╚════╝░░░░╚═╝░░░╚══════╝╚══════╝╚═════╝░        ╚══════╝╚═╝╚═════╝░░░░╚═╝░░░
  
   ''';
  static String logo = '''
  
 ██████╗ ██████╗ ███╗   ███╗██████╗  █████╗ ███╗   ██╗██╗   ██╗    ███╗   ██╗███████╗██╗    ██╗███████╗
██╔════╝██╔═══██╗████╗ ████║██╔══██╗██╔══██╗████╗  ██║╚██╗ ██╔╝    ████╗  ██║██╔════╝██║    ██║██╔════╝
██║     ██║   ██║██╔████╔██║██████╔╝███████║██╔██╗ ██║ ╚████╔╝     ██╔██╗ ██║█████╗  ██║ █╗ ██║███████╗
██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██╔══██║██║╚██╗██║  ╚██╔╝      ██║╚██╗██║██╔══╝  ██║███╗██║╚════██║
╚██████╗╚██████╔╝██║ ╚═╝ ██║██║     ██║  ██║██║ ╚████║   ██║       ██║ ╚████║███████╗╚███╔███╔╝███████║
 ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚═╝  ╚═══╝╚══════╝ ╚══╝╚══╝ ╚══════
''';

  static String profileLogo = '''
  
██████╗░██████╗░░█████╗░███████╗██╗██╗░░░░░███████╗
██╔══██╗██╔══██╗██╔══██╗██╔════╝██║██║░░░░░██╔════╝
██████╔╝██████╔╝██║░░██║█████╗░░██║██║░░░░░█████╗░░
██╔═══╝░██╔══██╗██║░░██║██╔══╝░░██║██║░░░░░██╔══╝░░
██║░░░░░██║░░██║╚█████╔╝██║░░░░░██║███████╗███████╗
╚═╝░░░░░╚═╝░░╚═╝░╚════╝░╚═╝░░░░░╚═╝╚══════╝╚══════╝
  
  ''';

  static String timeCardLogo = '''
  
████████╗██╗███╗░░░███╗███████╗        ░█████╗░░█████╗░██████╗░██████╗░
╚══██╔══╝██║████╗░████║██╔════╝        ██╔══██╗██╔══██╗██╔══██╗██╔══██╗
░░░██║░░░██║██╔████╔██║█████╗░░        ██║░░╚═╝███████║██████╔╝██║░░██║
░░░██║░░░██║██║╚██╔╝██║██╔══╝░░        ██║░░██╗██╔══██║██╔══██╗██║░░██║
░░░██║░░░██║██║░╚═╝░██║███████╗        ╚█████╔╝██║░░██║██║░░██║██████╔╝
░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚══════╝        ░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░
  ''';

  static String leaveRequestLogo = '''
  
██╗░░░░░███████╗░█████╗░██╗░░░██╗███████╗        ██████╗░███████╗░██████╗░██╗░░░██╗███████╗░██████╗████████╗
██║░░░░░██╔════╝██╔══██╗██║░░░██║██╔════╝        ██╔══██╗██╔════╝██╔═══██╗██║░░░██║██╔════╝██╔════╝╚══██╔══╝
██║░░░░░█████╗░░███████║╚██╗░██╔╝█████╗░░        ██████╔╝█████╗░░██║██╗██║██║░░░██║█████╗░░╚█████╗░░░░██║░░░
██║░░░░░██╔══╝░░██╔══██║░╚████╔╝░██╔══╝░░        ██╔══██╗██╔══╝░░╚██████╔╝██║░░░██║██╔══╝░░░╚═══██╗░░░██║░░░
███████╗███████╗██║░░██║░░╚██╔╝░░███████╗        ██║░░██║███████╗░╚═██╔═╝░╚██████╔╝███████╗██████╔╝░░░██║░░░
╚══════╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝        ╚═╝░░╚═╝╚══════╝░░░╚═╝░░░░╚═════╝░╚══════╝╚═════╝░░░░╚═╝░░░
  ''';

  static String news1() {
    return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
        'eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim '
        'ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut '
        'aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
        'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
        'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui '
        'officia deserunt mollit anim id est laborum.';
  }

  static String news2() {
    return 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem '
        'accusantium doloremque laudantium, totam rem aperiam, eaque ipsa '
        'quae ab illo inventore veritatis et quasi architecto beatae vitae '
        'dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit '
        'aspernatur aut odit aut fugit, sed quia consequuntur magni dolores '
        'eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, '
        'qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, '
        'sed quia non numquam eius modi tempora incidunt ut labore et dolore '
        'magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis '
        'nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut '
        'aliquid ex ea commodi consequatur? Quis autem vel eum iure '
        'reprehenderit qui in ea voluptate velit esse quam nihil molestiae '
        'consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla '
        'pariatur?';
  }

  static String? showNewsInDashboard() {
    print(Dashboard.logo);
    print('\n\n');
    print(Dashboard.news1());
    print('\n\n');
    print(Dashboard.news2());
    print('\n\n');
  }
}

class AdminTask {
  static String? adminDuties() {
    print('Please select the corresponding letters you wish to navigate:\n'
        'L for Leave Request\n'
        'R to Return to Main Menu\n');
    String? change = stdin.readLineSync();
    return (change);
  }

  static String? employeeLeaveRequest(user) {
    print('Leave Date: ${user.leaveDate}');
    print('Leave Status: ${user.leaveStatus}');
    print('Please enter leave date');
    final String? leaveDateRequest = stdin.readLineSync();
    print('Your leave date is: $leaveDateRequest');
    user.leaveDate = leaveDateRequest;
    user.leaveStatus = 'pending';
    print('Leave Status: ${user.leaveStatus}');
    return '$leaveDateRequest';
  }

  static String? editLeaveRequest() {
    print('Please select user to review request:\n'
        '0 for admin1\n'
        '1 for newUser1\n'
        '2 for newUser2\n'
        'R to Return to Main Menu');
    String? reviewLeaveRequest = stdin.readLineSync();
    return (reviewLeaveRequest);
  }

  static String? approvedOrDeniedLeave(user) {
    print('Please enter leave status decision');
    String? leaveDecision = stdin.readLineSync();
    user.leaveStatus = leaveDecision;
    print('Leave Status: ${user.leaveStatus}');
  }
}

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

class SalaryReport {
  static String salaryReportWeekly(user, totalHoursWeek) {
    print('Salary Report');
    double weeklySalary = ((((user.salary)! / 23)) / 8) * totalHoursWeek;
    return 'Your salary for this week: Php $weeklySalary\n ';
  }
}

class Navigator {
  static String useNavigator() {
    print('Please type corresponding letters you wish to navigate. \n'
        'D for Dashboard \n'
        'P for Profile \n'
        'T for Time Card \n'
        '    * E to Enter New Time Card & View Weekly Work Hours Duration Report\n'
        '    * S for Salary Report \n'
        '    * R to Return Main Menu \n'
        'M for Employees List (Admin only) \n'
        'L for Leave Request \n'
        'Q to Log Out');
    String navigate = stdin.readLineSync()!;
    return '$navigate';
  }

  static String salaryReportUnderTimeCard() {
    print('Please type corresponding letters you wish to navigate. \n'
        'E to Enter New Time Card & View Weekly Work Hours Duration Report\n'
        'S for Salary Report \n'
        'R to Return to Main Menu');
    String salary = stdin.readLineSync()!;
    return '$salary';
  }

  static String? computeSalary(newWeeklyTotalHoursWorkedList, user) {
    for (int i = 0; i < newWeeklyTotalHoursWorkedList.length; i++) {
      print('Week ${i + 1} ');
      double weeklySalary =
          ((((user.salary)! / 23)) / 8) * newWeeklyTotalHoursWorkedList[i];
      print('Your salary for this week: Php $weeklySalary\n ');
    }
  }
}

class Template {
  static String? newUserTemplate(employeeSystemList, i) {
    print(employeeSystemList[i]);
    List weeklyTotalHoursWorkedList = [];
    List timeCardList = [];
    bool insideEms = true;

    while (insideEms) {
      String navigate = Navigator.useNavigator();
      if (navigate == 'D') {
        Dashboard.showNewsInDashboard();
        continue;
      } else if (navigate == 'T') {
        print(Dashboard.timeCardLogo);
        print('Week 1                Time In    Time Out');
        double day1_time =
            (TimeCard.getDifference('Monday    ', '08:00', '17:05'));
        double day2_time =
            (TimeCard.getDifference('Tuesday   ', '08:00', '17:06'));
        double day3_time =
            (TimeCard.getDifference('Wednesday ', '08:00', '17:07'));
        double day4_time =
            (TimeCard.getDifference('Thursday  ', '08:00', '17:08'));
        double day5_time =
            (TimeCard.getDifference('Friday    ', '07:00', '17:09'));

        double totalHoursWorkedWeek1 =
            day1_time + day2_time + day3_time + day4_time + day5_time;
        print('\n');

        weeklyTotalHoursWorkedList.add(totalHoursWorkedWeek1);
        List newWeeklyTotalHoursWorkedList =
            weeklyTotalHoursWorkedList.toSet().toList();
        TimeCard.getTotalHoursWorkedWeekly(newWeeklyTotalHoursWorkedList);

        String navigate = Navigator.salaryReportUnderTimeCard();
        if (navigate == 'S') {
          Navigator.computeSalary(
              newWeeklyTotalHoursWorkedList, employeeSystemList[i]);
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
        AdminTask.employeeLeaveRequest(employeeSystemList[i]);
        continue;
      } else if (navigate == 'P') {
        print(Dashboard.profileLogo);
        print(employeeSystemList[i].toString());
      } else if (navigate == 'Q') {
        break;
      }
    }
  }
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
        List newTimeCardInOut =[];

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
