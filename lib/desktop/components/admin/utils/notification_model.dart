import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/common/services/auth_service.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class NotificationNotifier with ChangeNotifier {
  final AuthService _authService = AuthService();
  bool _isLoading = true;
  late String token;
  late String role;
  late String userId;
  late IO.Socket socket;
  List _notificationList = [];
  bool _isNotificationContainerOpen = false;
  int _numberOfNewNotifications = 0;

  // Getters
  bool get isLoading => _isLoading;
  List get notificationList => _notificationList;
  bool get isNotificationContainerOpen => _isNotificationContainerOpen;
  int get numberOfNewNotifications => _numberOfNewNotifications;

  NotificationNotifier() {
    getNotifications();
    _fetchUnviewedNotificationsCount();
    _initializeSocket();
  }

  void resetData() {
    _notificationList = [];
    notifyListeners();
    _numberOfNewNotifications = 0;
    userId = '';
    role = '';
    token = '';
    _isLoading = false;
    _isNotificationContainerOpen = false;
  }

  void toggleNotificationContainer() {
    _isNotificationContainerOpen = !_isNotificationContainerOpen;
    _markUnviewdNotificationsViewd();
    notifyListeners();
  }

  void markAsViewed() {
    _markUnviewdNotificationsViewd();
  }

  void _initializeSocket() {
    socket = IO.io('http://localhost:5000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();

    socket.on('notificationCreated', (data) {
      // Ensure the new notification is added to the start of the list
      _numberOfNewNotifications = _numberOfNewNotifications + 1;
      _notificationList.add(data);
      notifyListeners();
    });
  }

  Future<List> getNotifications() async {
    // await Future.delayed(
    //   const Duration(seconds: 5),
    // );
    // Retrieve user data from shared preferences

    final Map<String, dynamic>? userData =
        await _authService.getUserDataFromSharedPreferences();
    if (userData != null) {
      token = userData['token'];
      userId = userData['_id'];
      role = userData['role'];
    } else {
      // Handle token error
    }

    final Map<String, dynamic> data = {'userId': userId, "role": role};

    final String requestBody = jsonEncode(data);

    const String roleUrl = 'http://localhost:5000/api/notifications/user';
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
      _notificationList = resData;
      _isLoading = false;
      notifyListeners();
      return _notificationList;
    } else {
      print('error');
      _isLoading = false;
      notifyListeners();
      return [];
    }
  }

  Future<void> _markUnviewdNotificationsViewd() async {
    final Map<String, dynamic>? userData =
        await _authService.getUserDataFromSharedPreferences();
    if (userData != null) {
      token = userData['token'];
      userId = userData['_id'];
    } else {
      // Handle token error
      return;
    }

    final Map<String, dynamic> data = {
      'userId': userId,
    };

    final String requestBody = jsonEncode(data);

    const String countUrl =
        'http://localhost:5000/api/notifications/markAsViewed';
    final Uri url = Uri.parse(countUrl);
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      _numberOfNewNotifications = 0;
      notifyListeners();
    }
  }

  Future<void> _fetchUnviewedNotificationsCount() async {
    final Map<String, dynamic>? userData =
        await _authService.getUserDataFromSharedPreferences();
    if (userData != null) {
      token = userData['token'];
      userId = userData['_id'];
    } else {
      // Handle token error
      return;
    }

    final Map<String, dynamic> data = {
      'userId': userId,
    };

    final String requestBody = jsonEncode(data);

    const String countUrl =
        'http://localhost:5000/api/notifications/unviewedCount';
    final Uri url = Uri.parse(countUrl);
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      Map count = jsonDecode(response.body);
      Map<String, dynamic> newData = Map<String, dynamic>.from(count);
      _numberOfNewNotifications = newData['count'];
      notifyListeners();
    } else {
      print('some unhandled error');
    }
  }
}
