import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:intl/intl.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/custom_text_row.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class SingleTeacherProfileView extends StatefulWidget {
  final VoidCallback onBack;
  final String teacherName;
  final Map userData;

  const SingleTeacherProfileView({
    required this.onBack,
    required this.teacherName,
    required this.userData,
    super.key,
  });

  @override
  _SingleTeacherProfileViewState createState() =>
      _SingleTeacherProfileViewState();
}

class _SingleTeacherProfileViewState extends State<SingleTeacherProfileView> {
  late IO.Socket socket;
  late List attendance;
  late List notifications;

  @override
  void initState() {
    super.initState();
    attendance = widget.userData['attendance'] ?? [];
    notifications = widget.userData['notifications'] ?? [];

    socket = IO.io('http://localhost:5000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();
    socket.on('userAttendance', (data) {
      setState(() {
        attendance.add(data);
      });
    });

    socket.on('newNotification', (data) {
      setState(() {
        notifications.add(data);
      });
    });
  }

  @override
  void dispose() {
    socket.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List classes = widget.userData['classes'] ?? [];
    int classesLength = classes.length;
    List courses = widget.userData['courses'] ?? [];

    double weeklyAttendancePercentage =
        calculateAttendancePercentage(attendance, 'week');
    double monthlyAttendancePercentage =
        calculateAttendancePercentage(attendance, 'month');

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                  onPressed: widget.onBack,
                ),
                const SizedBox(
                  width: 20,
                ),
                CustomText(
                  widget.teacherName,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Add your detailed teacher profile information here
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(12),
                          topEnd: Radius.circular(12))),
                  child: Row(
                    children: [
                      CustomText(
                        widget.teacherName,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const CustomText(
                        'Currently In School',
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.green,
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                      const Icon(
                        Icons.edit,
                        color: Colors.teal,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        width: 210,
                        height: 210,
                        'assets/images/signin.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 0.7,
                      height: 100,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          CustomizableCard(
                            isTextLeft: true,
                            isStyleTwo: true,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            leftText: 'Name',
                            leftTextStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                            rightText1: widget.teacherName,
                            rightTextStyle1: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomizableCard(
                            isTextLeft: true,
                            isStyleTwo: true,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            leftText: 'Position',
                            leftTextStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                            rightText1:
                                widget.userData['user']?['role'] ?? 'N/A',
                            rightTextStyle1: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomizableCard(
                            isTextLeft: true,
                            isStyleTwo: true,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            leftText: 'Number Of Classes',
                            leftTextStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                            rightText1: classesLength.toString(),
                            rightTextStyle1: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const CustomTextRow(
                        leftText: 'List Of Classes & Subjects',
                        isLeftText: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: classes.map<Widget>((singleClass) {
                          return Column(
                            children: [
                              CustomizableCard(
                                isTextLeft: true,
                                leftText: singleClass['title'] ?? 'N/A',
                                leftTextStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                rightText1: (courses.isNotEmpty
                                    ? courses[0]['title'] ?? 'N/A'
                                    : 'N/A'),
                                rightTextStyle1: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const CustomTextRow(
                        leftText: 'Attendance Summary',
                        isLeftText: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomizableCard(
                        isTextLeft: true,
                        leftText: 'This Week',
                        leftTextStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        rightText1:
                            '${weeklyAttendancePercentage.toStringAsFixed(2)}%',
                        rightTextStyle1: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomizableCard(
                        isTextLeft: true,
                        leftText: 'This Month',
                        leftTextStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        rightText1:
                            '${monthlyAttendancePercentage.toStringAsFixed(2)}% ${attendance.length}',
                        rightTextStyle1: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  double calculateAttendancePercentage(List attendance, String period) {
    DateTime now = DateTime.now();
    DateTime startDate;

    if (period == 'week') {
      startDate = now.subtract(Duration(days: now.weekday - 1));
    } else if (period == 'month') {
      startDate = DateTime(now.year, now.month, 1);
    } else {
      throw ArgumentError('Invalid period: $period');
    }

    List filteredAttendance = attendance.where((entry) {
      DateTime entryDate = DateTime.parse(entry['date']);
      return entryDate.isAfter(startDate) ||
          entryDate.isAtSameMomentAs(startDate);
    }).toList();

    if (filteredAttendance.isEmpty) {
      return 0.0;
    }

    int presentCount = filteredAttendance.where((entry) {
      return entry['date'];
    }).length;

    return (presentCount / filteredAttendance.length) * 100;
  }
}
