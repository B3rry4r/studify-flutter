import 'package:intl/intl.dart';

void attendancePercentageSummary() {
  DateTime now = DateTime.now();

  // Calculate for the current week
  int currentWeekDays = DateTime.daysPerWeek;
  int daysAttendedWeek =
      5; // Example: Student attended 5 days in the current week

  // Calculate for the current month
  int currentMonthDays = daysInMonth(now.year, now.month);
  int daysAttendedMonth =
      27; // Example: Student attended 27 days in the current month

  // Calculate and print attendance percentages
  print(
      'Weekly Attendance Percentage: ${calculateAttendancePercentage(currentWeekDays, daysAttendedWeek).toStringAsFixed(2)}%');
  print(
      'Monthly Attendance Percentage: ${calculateAttendancePercentage(currentMonthDays, daysAttendedMonth).toStringAsFixed(2)}%');
}

int daysInMonth(int year, int month) {
  // Check if it's December
  if (month == 12) {
    return DateTime(year + 1, 1, 0).day;
  } else {
    return DateTime(year, month + 1, 0).day;
  }
}

double calculateAttendancePercentage(int totalDays, int attendedDays) {
  if (totalDays <= 0) {
    throw ArgumentError('Total days must be greater than 0.');
  }

  double percentage = (attendedDays / totalDays) * 100;
  return percentage;
}
