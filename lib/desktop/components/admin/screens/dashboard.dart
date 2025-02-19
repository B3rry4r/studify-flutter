import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studify/common/services/auth_service.dart';
import 'package:studify/desktop/components/admin/utils/auth_notifier.dart';
import 'package:studify/desktop/widgets/custom_container.dart';
import 'package:studify/desktop/widgets/responsive_grid.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class DashboardAdminScreen extends StatefulWidget {
  const DashboardAdminScreen({super.key});

  @override
  State<DashboardAdminScreen> createState() => _DashboardAdminScreenState();
}

class _DashboardAdminScreenState extends State<DashboardAdminScreen> {
  bool _isLoading = true;
  // final AuthService _authService = AuthService();
  final AuthProvider _authProvider = AuthProvider();

  @override
  void initState() {
    super.initState();
    _loadDashboardData();
    _initializeSocket();
  }

  String role = '';
  String token = '';
  List _noOfClasses = [];
  List _noOfSubjects = [];
  late IO.Socket socket;
  List studentFetchedData = [];
  List teacherFetchedData = [];
  List teachersAttendanceHistoryList = [];
  List studentsAttendanceHistoryList = [];

  void _initializeSocket() {
    socket =
        IO.io('https://c3b8-102-90-82-178.ngrok-free.app', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();

    socket.on('studentData', (data) {
      setState(() {
        studentFetchedData.add(data);
      });
    });

    socket.on('teacherData', (data) {
      setState(() {
        teacherFetchedData.add(data);
      });
    });

    socket.on('newCourse', (data) {
      setState(() {
        _noOfSubjects.add(data);
      });
    });

    socket.on('newClass', (data) {
      setState(() {
        _noOfClasses.add(data);
      });
    });

    socket.on('userAttendance', (data) {
      Map newData = Map.fromIterable(data);
      setState(() {
        studentsAttendanceHistoryList.insert(0, data);
        // studentsAttendanceHistoryList.reversed.toList().addAll(data);
      });
    });

    socket.on('teacherAttendance', (data) {
      setState(() {
        teachersAttendanceHistoryList.addAll([data]);
        // teachersAttendanceHistoryList.insert(0, newData);
        // teachersAttendanceHistoryList.reversed.toList().addAll(data);
      });
    });
  }

  @override
  void dispose() {
    socket.disconnect();
    super.dispose();
  }

  Future<void> _loadDashboardData() async {

    final Map<String, dynamic>? userData = _authProvider.userData;
    if (userData != null) {
      print(userData);
      role = userData['role'];
      token = userData['token'];
      // Use the retrieved data as needed
    } else {
      print(userData);
      // Handle case where user data is not found in shared preferences
    }
    studentFetchedData = await _runNnumberFunction('Student');
    teacherFetchedData = await _runNnumberFunction('Teacher');
    _noOfClasses = await _getClasses();
    _noOfSubjects = await _getCourses();
    teachersAttendanceHistoryList = await _getTeachersAttendanceHistory();
    studentsAttendanceHistoryList = await _getStudentsAttendanceHistory();
    setState(() {
      _isLoading = false;
    });
  }

  Future<List> _getCourses() async {
    const String roleUrl =
        'https://c3b8-102-90-82-178.ngrok-free.app/api/courses';
    final Uri url = Uri.parse(roleUrl);
    final http.Response response = await http.get(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      // print(response.body);
      final List<dynamic> resData = jsonDecode(response.body);
      return resData;
    } else {
      //
      return [];
    }
  }

  Future<List> _getClasses() async {
    const String roleUrl =
        'https://c3b8-102-90-82-178.ngrok-free.app/api/classes';
    final Uri url = Uri.parse(roleUrl);
    final http.Response response = await http.get(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      // print(response.body);
      final List<dynamic> resData = jsonDecode(response.body);
      return resData;
    } else {
      //
      return [];
    }
  }

  Future<List> _getTeachersAttendanceHistory() async {
    const String requestUrl =
        'https://c3b8-102-90-82-178.ngrok-free.app/api/attendance/teachers';
    final Uri url = Uri.parse(requestUrl);
    final http.Response response = await http.get(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      // print(response.body);
      final List<dynamic> resData = jsonDecode(response.body);
      return resData;
    } else {
      //
      return [];
    }
  }

  Future<List> _getStudentsAttendanceHistory() async {
    const String requestUrl =
        'https://c3b8-102-90-82-178.ngrok-free.app/api/attendance';
    final Uri url = Uri.parse(requestUrl);
    final http.Response response = await http.get(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      // print(response.body);
      final List<dynamic> resData = jsonDecode(response.body);
      return resData;
    } else {
      //
      return [];
    }
  }

  Future<List> _runNnumberFunction(String role) async {
    final Map<String, dynamic> data = {
      'role': role,
    };

    final String requestBody = jsonEncode(data);

    //roles url
    const String roleUrl =
        'https://c3b8-102-90-82-178.ngrok-free.app/api/users/all-users';
    final Uri url = Uri.parse(roleUrl);
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      // print(response.body);
      final List<dynamic> resData = jsonDecode(response.body);
      return resData;
    } else {
      //
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List studentAttendances = studentsAttendanceHistoryList;
    // Example list of containers
    final List<Widget> containers2 = [
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              'Attendance Overview',
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF00FF),
                              Color(0xFF0000FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Teachers Attendance In percentage',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            '92%',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF00FF),
                              Color(0xFF0000FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Teachers Attendance In percentage',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            '92%',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF00FF),
                              Color(0xFF0000FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Total Teachers Today',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            '399',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFF00FF),
                              Color(0xFF0000FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Total Students Today',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            '399',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomText(
              'Attendance History',
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        'Students',
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Column(
                        children: studentsAttendanceHistoryList.reversed
                            .take(2)
                            .toList()
                            .map((attendance) {
                          String status = attendance['status'];
                          Map<String, dynamic> userData = attendance['user'];
                          String userName =
                              ' ${userData['firstName']} ${userData['lastName']}';
                          DateTime dateTime =
                              DateTime.parse(attendance['date']);
                          String formattedCheckInTime =
                              DateFormat.Hm().format(dateTime);
                          DateTime now = DateTime.now();
                          bool isEarly = dateTime.isBefore(now);
                          bool updatedStatus = status == 'Check In';

                          return Column(
                            children: [
                              CustomizableCard(
                                leftIconPath: 'assets/images/arrow_in.svg',
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 243, 243, 243)
                                          .withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                centerText1: userName,
                                centerTextStyle1: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                centerText2: status,
                                centerTextStyle2: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color:
                                      updatedStatus ? Colors.green : Colors.red,
                                ),
                                rightText1: formattedCheckInTime,
                                rightTextStyle1: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                rightText2: isEarly ? 'On Time' : 'Late',
                                rightTextStyle2: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: isEarly ? Colors.green : Colors.red,
                                ),
                                isRight: true,
                                leftIconBackgroundColor: Colors.red.shade600,
                                leftIconSize: screenWidth < 380 ? 30.0 : 30.0,
                                padding3: screenWidth < 380 ? 5 : 10,
                                padding: screenWidth < 380 ? 10 : 10,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        'Teachers',
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Column(
                        children: teachersAttendanceHistoryList.reversed
                            .take(2)
                            .toList()
                            .map((attendance) {
                          String status = attendance['status'];
                          Map<String, dynamic> userData = attendance['user'];
                          String userName =
                              '${userData['firstName']} ${userData['lastName']}';
                          DateTime dateTime =
                              DateTime.parse(attendance['date']);
                          String formattedCheckInTime =
                              DateFormat.Hm().format(dateTime);
                          DateTime now = DateTime.now();
                          bool isEarly = dateTime.isBefore(now);
                          bool updatedStatus = status == 'Check In';

                          return Column(
                            children: [
                              CustomizableCard(
                                leftIconPath: 'assets/images/arrow_in.svg',
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 243, 243, 243)
                                          .withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                centerText1: userName,
                                centerTextStyle1: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                centerText2: status,
                                centerTextStyle2: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color:
                                      updatedStatus ? Colors.green : Colors.red,
                                ),
                                rightText1: formattedCheckInTime,
                                rightTextStyle1: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                rightText2: isEarly ? 'On Time' : 'Late',
                                rightTextStyle2: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: isEarly ? Colors.green : Colors.red,
                                ),
                                isRight: true,
                                leftIconBackgroundColor: Colors.red.shade600,
                                leftIconSize: screenWidth < 380 ? 30.0 : 30.0,
                                padding3: screenWidth < 380 ? 5 : 10,
                                padding: screenWidth < 380 ? 10 : 10,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              'Financial Overview',
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomizableCard(
              isTextLeft: true,
              leftText: 'Students Paid',
              leftTextStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
              leftText2: 'Ada George Branch',
              leftTextStyle2: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
              rightIcon1: Icons.check_circle,
              rightIconColor1: const Color.fromARGB(255, 60, 232, 65),
              rightIconSize: 20,
              rightText2: '1294',
              rightTextStyle2: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 243, 243, 243).withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
              ),
              isRight: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              'Defaulters',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                            ClipOval(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                ),
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  'images/arrow_in.svg',
                                  width: 5,
                                  height: 5,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          '17',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Space between cards
                Flexible(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              'Pending',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ClipOval(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFFF00FF), // Magenta
                                      Color(0xFF0000FF), // Blue
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  'images/arrow_in.svg',
                                  width: 5,
                                  height: 5,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          '73',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomText(
              'Financial History',
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                CustomizableCard(
                  isTextLeft: true,
                  leftText: '3h4df354hfg0a9ea34',
                  leftTextStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                  centerText1: 'Jun 19, 2024',
                  centerTextStyle1: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                  rightText2: 'Recieved',
                  rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 49, 251, 56)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 243, 243)
                        .withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  isRight: true,
                  isSingleCenterText: true,
                  padding: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  isTextLeft: true,
                  leftText: '3h4df354hfg0a9ea34',
                  leftTextStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                  centerText1: 'Jun 19, 2024',
                  centerTextStyle1: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                  rightText2: 'Recieved',
                  rightTextStyle2: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 49, 251, 56)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 243, 243)
                        .withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  isRight: true,
                  isSingleCenterText: true,
                  padding: 10,
                ),
                //   const SizedBox(
                //   height: 10,
                // ),
              ],
            )
          ],
        ),
      ),
    ];

    final List<Widget> containers = [
      CustomContainer(
        firstText: !_isLoading ? '${teacherFetchedData.length}' : '',
        secondText: 'Total Number Of Teachers',
      ),
      CustomContainer(
        firstText: !_isLoading ? '${studentFetchedData.length}' : '',
        secondText: 'Total Number Of Students',
      ),
      CustomContainer(
        firstText: !_isLoading ? '${_noOfClasses.length}' : '',
        secondText: 'Total Number Of Classes',
      ),
      CustomContainer(
        firstText: !_isLoading ? '${_noOfSubjects.length}' : '',
        secondText: 'Total Number Of Subjects',
      ),
    ];

    return SingleChildScrollView(
      child: _isLoading
          ? Container(
              width: double.infinity,
              height: screenHeight - 60,
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(40),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Container(
              width: double.infinity,
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  ResponsiveGrid(items: containers),
                  const SizedBox(
                    height: 30,
                  ),
                  ResponsiveGrid(
                    items: containers2,
                    isType2: true,
                  ),
                ],
              ),
            ),
    );
  }
}
