class SalaryReport {
  static String salaryReportWeekly(user, totalHoursWeek) {
    print('Salary Report');
    double weeklySalary = ((((user.salary)! / 23)) / 8) * totalHoursWeek;
    return 'Your salary for this week: Php $weeklySalary\n ';
  }
}
