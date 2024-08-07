import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:studify/mobile/components/admin/utils/mobilenotifier.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class StudentsOverview extends StatefulWidget {
  const StudentsOverview({super.key});

  @override
  State<StudentsOverview> createState() => _StudentsOverviewState();
}

class _StudentsOverviewState extends State<StudentsOverview> {

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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var model = Provider.of<MobileHomeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Students Overview',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 380 ? 15 : 20),
          child: Column(
            children: [
              const CustomTextRow(
                leftText: 'Overview',
                isLeftText: false,
              ),
              CustomizableCard(
                leftIconPath: 'assets/images/arrow_in.svg',
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                centerText1: 'Total Students',
                centerTextStyle1: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth < 380 ? 15 : 18,
                ),
                centerText2: 'Ada George Branch',
                centerTextStyle2: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth < 380 ? 10 : 13,
                ),
                rightText1: model.studentsProfileList.length.toString(),
                rightTextStyle1: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth < 380 ? 14 : 16,
                ),
                isRight: true,
                isGradient3: true,
                isGradient: true,
                leftIconSize: 50.0,
                padding3: 18.0,
                padding: screenWidth < 380 ? 20 : 30,
              ),
              SizedBox(
                height: screenWidth < 380 ? 20 : 30,
              ),
              const Row(
                children: [
                  Flexible(
                    child: CustomizableCardBig(
                      width: double.infinity,
                      text1: '92%',
                      text2: 'Attendance',
                      svgPath: 'images/arrow_in.svg',
                    ),
                  ),
                  SizedBox(width: 16), // Space between cards
                  Flexible(
                    child: CustomizableCardBig(
                      width: double.infinity,
                      text1: '470',
                      text2: 'Checked In',
                      svgPath: 'images/arrow_in.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth < 380 ? 30 : 40,
              ),
              CustomizableCard(
                leftIconPath: 'assets/images/hat_G.svg',
                passedFunction: attendancePercentageSummary,
                isStyleTwo: true,
                isGradient: false,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                borderRadius: BorderRadius.circular(10),
                padding: screenWidth < 380 ? 11 : 15,
                padding2: screenWidth < 380 ? 13 : 17,
                isDoublePadding: true,
                leftIconSize: 50,
                padding3: 10,
                centerText1: 'View Student Profiles',
                centerTextStyle1: TextStyle(
                  fontSize: screenWidth < 380 ? 13 : 16,
                  fontWeight: FontWeight.w500,
                ),
                rightIcon1: Icons.arrow_forward_ios_outlined,
                rightIconSize: screenWidth < 380 ? 13 : 16,
              ),
              SizedBox(
                height: screenWidth < 380 ? 20 : 30,
              ),
              const CustomTextRow(
                leftText: 'Attendance History',
              ),
              SizedBox(
                height: screenWidth < 380 ? 15 : 20,
              ),
              Column(
                children: model.studentsAttendanceHistoryList.reversed
                    .toList()
                    .map((attendance) {
                  String status = attendance['status'];
                  Map<String, dynamic> userData = attendance['user'];
                  String userName =
                      ' ${userData['firstName']} ${userData['lastName']}';
                  DateTime dateTime = DateTime.parse(attendance['date']);
                  String formattedCheckInTime =
                      DateFormat.Hm().format(dateTime);
                  String formatterdCheckInDate =
                      DateFormat.yMd().format(dateTime);
                  DateTime now = DateTime.now();
                  bool isEarly = dateTime.isBefore(now);
                  bool updatedStatus = status == 'Check In';

                  return Column(
                    children: [
                      CustomizableCard(
                        leftIconPath: 'assets/images/arrow_in.svg',
                        // isGradient: true,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 243, 243)
                              .withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        centerText1: userName,
                        centerTextStyle1: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth < 380 ? 10 : 15,
                        ),
                        centerText2: status,
                        centerTextStyle2: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth < 380 ? 10 : 12,
                          color: updatedStatus ? Colors.green : Colors.red,
                        ),
                        rightText1: formattedCheckInTime,
                        rightTextStyle1: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth < 380 ? 12 : 16,
                        ),
                        rightText2: formatterdCheckInDate,
                        rightTextStyle2: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth < 380 ? 10 : 12,
                        ),
                        isRight: true,
                        leftIconBackgroundColor: Colors.red.shade600,
                        leftIconSize: screenWidth < 380 ? 30.0 : 50.0,
                        padding3: screenWidth < 380 ? 10 : 20,
                        padding: screenWidth < 380 ? 15 : 20,
                      ),
                      SizedBox(
                        height: screenWidth < 380 ? 15 : 20,
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
