import 'dart:io';
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