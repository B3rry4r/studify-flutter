import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:studify/common/services/auth_service.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class MobileHomeNotifier with ChangeNotifier {
  // Initializers
  final AuthService _authService = AuthService();
  bool _isLoading = true;
  bool _isStudentDataLoading = true;
  late String _noOfStudents;
  late String token;
  List<Map<String, dynamic>> _studentsProfileList = [];
  List _teacherFetchedData = [];
  List _ss1 = [];
  List _ss2 = [];
  List _ss3 = [];
  late IO.Socket socket;
  List _teachersAttendanceHistoryList = [];
  List _studentsAttendanceHistoryList = [];
  // List _js1 = [];
  // List _js2 = [];
  // List _js3 = [];
  // List _p1 = [];
  // List _p2 = [];
  // List _p3 = [];
  // Getters

  List get ss1 => _ss1;
  List get ss2 => _ss2;
  List get ss3 => _ss3;
  bool get isLoading => _isLoading;
  List get teachersAttendanceHistoryList => _teachersAttendanceHistoryList;
  List get studentsAttendanceHistoryList => _studentsAttendanceHistoryList;
  bool get isStudentDataLoading => _isStudentDataLoading;
  String get noOfStudents => _noOfStudents;
  List get studentsProfileList => _studentsProfileList;
  List get teacherFetchedData => _teacherFetchedData;

  MobileHomeNotifier() {
    _getStudentsData();
    _initializeSocket();
  }

  Future<void> _otherDataFetching() async {
    _teachersAttendanceHistoryList = await _getTeachersAttendanceHistory();
    _studentsAttendanceHistoryList = await _getStudentsAttendanceHistory();
    _teacherFetchedData = await _runNnumberFunction('Teacher');
  }

  void _initializeSocket() {
    socket = IO.io('https://9000-idx-studify-server-11-1738236260925.cluster-blu4edcrfnajktuztkjzgyxzek.cloudworkstations.dev/?monospaceUid=951919&embedded=0', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    // socket.connect();

    socket.on('userAttendance', (data) {
      studentsAttendanceHistoryList.insert(0, data);
    });

    socket.on('teacherAttendance', (data) {
      teachersAttendanceHistoryList.addAll([data]);
    });
    socket.on('studentData', (data) async {
      // Map<String, dynamic> newStudent = Map<String, dynamic>.from(data);
      await reRun();
      notifyListeners();
    });
  }

  Future<void> reRun() async {
    try {
      await _getStudentsData();
    } catch (e) {
      print(e);
    }
  }

  Future<List> _runNnumberFunction(String role) async {
    final Map<String, dynamic> data = {
      'role': role,
    };

    final String requestBody = jsonEncode(data);

    //roles url
    const String roleUrl = 'https://9000-idx-studify-server-11-1738236260925.cluster-blu4edcrfnajktuztkjzgyxzek.cloudworkstations.dev/?monospaceUid=951919&embedded=0/api/users/all-users';
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

  Future<void> _getStudentsData() async {
    final Map<String, dynamic> role = {
      'role': 'Student',
    };

    final Map<String, dynamic>? userData =
        await _authService.getUserDataFromSharedPreferences();
    if (userData != null) {
      token = userData['token'];
    } else {
      // Handle token error
    }

    // JSONed
    final String requestBody = jsonEncode(role);

    // Send POST request to fetch data
    final Uri url = Uri.parse('https://9000-idx-studify-server-11-1738236260925.cluster-blu4edcrfnajktuztkjzgyxzek.cloudworkstations.dev/?monospaceUid=951919&embedded=0/api/users/all-users');
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      try {
        final List<dynamic> resData = jsonDecode(response.body);
        _noOfStudents = resData.length.toString();
        List<Map<String, dynamic>> data =
            List<Map<String, dynamic>>.from(resData);
        _studentsProfileList = data;
        //filter student
        await _filterStudentsClass();
        await _otherDataFetching();
      } catch (e) {
        print(e);
      }
    } else {
      print('ERROR');
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> _filterStudentsClass() async {
    _ss1 =
        await filterByClass(_studentsProfileList, 'Senior Secondary School 1');
    _ss2 =
        await filterByClass(_studentsProfileList, 'Senior Secondary School 2');
    _ss3 =
        await filterByClass(_studentsProfileList, 'Senior Secondary School 3');
  }

  Future<List<Map<String, dynamic>>> filterByClass(
    List<Map<String, dynamic>> students,
    String classTitle,
  ) async {
    return students
        .where((student) => student['class']['title'] == classTitle)
        .toList();
  }

  Future<List> _getTeachersAttendanceHistory() async {
    const String requestUrl = 'https://9000-idx-studify-server-11-1738236260925.cluster-blu4edcrfnajktuztkjzgyxzek.cloudworkstations.dev/?monospaceUid=951919&embedded=0/api/attendance/teachers';
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
    const String requestUrl = 'https://9000-idx-studify-server-11-1738236260925.cluster-blu4edcrfnajktuztkjzgyxzek.cloudworkstations.dev/?monospaceUid=951919&embedded=0/api/attendance';
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
}
