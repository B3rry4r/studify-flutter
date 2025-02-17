import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:studify/common/services/auth_service.dart';

class ManagementNotifier with ChangeNotifier {
  // Initializers
  final AuthService _authService = AuthService();
  bool _isLoading = true;
  bool _isStudentDataLoading = true;
  late String token;
  List _teachersProfileList = [];
  List _studentsProfileList = [];
  // Getters
  bool get isLoading => _isLoading;
  // bool get isAccountCreating => _isAccountCreating;
  bool get isStudentDataLoading => _isStudentDataLoading;
  List get teachersProfileList => _teachersProfileList;
  List get studentsProfileList => _studentsProfileList;

  ManagementNotifier() {
    _getTeachersData();
    _getStudentsData();
  }

  void resetData() {
    _teachersProfileList = [];
    _studentsProfileList = [];
    token = '';
    _isLoading = true;
    _isStudentDataLoading = true;
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
      final List<dynamic> resData = jsonDecode(response.body);
      _studentsProfileList = resData;
    } else {
      print('ERROR');
    }

    _isStudentDataLoading = false;
    notifyListeners();
  }

  Future<void> _getTeachersData() async {
    final Map<String, dynamic> role = {
      'role': 'Teacher',
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
      final List<dynamic> resData = jsonDecode(response.body);
      _teachersProfileList = resData;
    } else {
      print('ERROR');
    }

    _isLoading = false;
    notifyListeners();
  }
}
