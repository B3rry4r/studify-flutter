import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:studify/common/services/auth_service.dart';

class CBTNotifier with ChangeNotifier {
  final AuthService _authService = AuthService();
  bool _isLoading = true;
  late String token;
  List<ClassData> _classList = [];

  bool get isLoading => _isLoading;
  List<ClassData> get classList => _classList;

  CBTNotifier() {
    _getClassData();
  }

  Future<void> _getClassData() async {
    final Map<String, dynamic>? userData =
        await _authService.getUserDataFromSharedPreferences();
    if (userData != null) {
      token = userData['token'];
    } else {
      // Handle token error
      return;
    }

    final Uri url =
        Uri.parse('https://c3b8-102-90-82-178.ngrok-free.app/api/classes');
    final http.Response response = await http.get(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      final List<dynamic> resData = jsonDecode(response.body);
      try {
        _classList = resData.map((data) => ClassData.fromJson(data)).toList();
      } catch (e) {
        print(e.toString());
        print('error getting data');
      }
    } else {
      print('ERROR WITH GETTING CLASS DATA');
    }

    _isLoading = false;
    notifyListeners();
  }
}

class ClassData {
  final String title;
  final List<Course> courses;

  ClassData({required this.title, required this.courses});

  factory ClassData.fromJson(Map<String, dynamic> json) {
    return ClassData(
      title: json['title'],
      courses: (json['courses'] as List)
          .map((course) => Course.fromJson(course))
          .toList(),
    );
  }
}

class Course {
  final String id;
  final String title;

  Course({required this.id, required this.title});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['_id'],
      title: json['title'],
    );
  }
}
