import 'navigator.dart';
import 'dashboard.dart';
import 'timecard.dart';
import 'admintask.dart';

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