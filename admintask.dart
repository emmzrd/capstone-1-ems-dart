import 'dart:io';
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