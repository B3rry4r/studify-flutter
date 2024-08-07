import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:studify/mobile/components/admin/utils/mobilenotifier.dart';
import 'package:studify/mobile/components/admin/screens/single_student_attendance.dart';
import 'package:studify/mobile/components/admin/utils/qr_scanner.dart';
import 'package:studify/mobile/components/teachers/screens/students_attendance_history.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:studify/mobile/widgets/customizable_content_card_2.dart';

class StudentsAttendanceAdminScreen extends StatefulWidget {
  const StudentsAttendanceAdminScreen({super.key});

  @override
  State<StudentsAttendanceAdminScreen> createState() =>
      _StudentsAttendanceAdminScreenState();
}

class _StudentsAttendanceAdminScreenState
    extends State<StudentsAttendanceAdminScreen> {
  void openMore() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const StudentsAttendanceHistoryScreen(),
    ));
  }

  void _navToScannedStudent(String qrCode) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => SingleStudentAttendanceScreenAdmins(),
    ));
  }

  void _openQRScanner() async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => QRScannerScreen(),
      ),
    );

    if (result != null) {
      _navToScannedStudent(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var model = Provider.of<MobileHomeNotifier>(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const CustomTextRow(
                        leftText: 'Overview', isLeftText: false),
                    const SizedBox(height: 20),
                    CustomizableCard(
                      leftIconPath: 'assets/images/arrow_in.svg',
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 243, 243)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      centerText1: 'Total Students',
                      centerTextStyle1: TextStyle(
                        fontWeight: FontWeight.w900,
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
                      leftIconBackgroundColor: Colors.blueAccent,
                      leftIconSize: 50.0,
                      padding3: 18.0,
                      padding: screenWidth < 380 ? 20 : 30,
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 40),
                    const CustomTextRow(
                      leftText: 'Check In & Check Out Time',
                      isLeftText: false,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Flexible(
                          child: CustomizableCardBig(
                            width: double.infinity,
                            text1: '6:30-7:00',
                            text2: 'Check In Time',
                            svgPath: 'images/arrow_in.svg',
                          ),
                        ),
                        SizedBox(width: 16),
                        Flexible(
                          child: CustomizableCardBig(
                            width: double.infinity,
                            text1: '3:00-6:00',
                            text2: 'Check Out Time',
                            svgPath: 'images/arrow_in.svg',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    CustomTextRow(
                      leftText: 'Attendance History',
                      passedFunction: openMore,
                    ),
                    const SizedBox(height: 20),
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
                                color:
                                    updatedStatus ? Colors.green : Colors.red,
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
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 5,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomizableCard(
                passedFunction: _openQRScanner,
                leftIconSize: screenWidth < 380 ? 30.0 : 60.0,
                padding3: screenWidth < 380 ? 10 : 20,
                leftIconPath: 'assets/images/arrow_right.svg',
                centerText1: 'Swipe to Open QR Scanner',
                isGradient: false,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                padding: 10.0,
                isStyleTwo: true,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                centerTextStyle1: const TextStyle(),
                leftIconBackgroundColor: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
