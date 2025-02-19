// 'https://c3b8-102-90-82-178.ngrok-free.app/api/notifications/user';

// 'https://c3b8-102-90-82-178.ngrok-free.app/api/notifications/markAsViewed';

// 'https://c3b8-102-90-82-178.ngrok-free.app/api/notifications/unviewedCount';
//
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:studify/common/services/auth_service.dart';
import 'package:studify/desktop/components/admin/utils/auth_notifier.dart';

class NotificationNotifier with ChangeNotifier {
  // final AuthService _authService = AuthService();
  late IO.Socket socket;

  bool _isLoading = true;
  List _notificationList = [];
  bool _isNotificationContainerOpen = false;
  int _numberOfNewNotifications = 0;

  // Getters
  bool get isLoading => _isLoading;
  List get notificationList => _notificationList;
  bool get isNotificationContainerOpen => _isNotificationContainerOpen;
  int get numberOfNewNotifications => _numberOfNewNotifications;

  NotificationNotifier() {
    _initializeSocket();
  }

  void initialize(BuildContext context) {
    // Fetch user data only when the provider is initialized
    getNotifications(context);
    _fetchUnviewedNotificationsCount(context);
  }

  void resetData() {
    _notificationList = [];
    _numberOfNewNotifications = 0;
    _isLoading = false;
    _isNotificationContainerOpen = false;
    notifyListeners();
  }

  void toggleNotificationContainer() {
    _isNotificationContainerOpen = !_isNotificationContainerOpen;
    notifyListeners();
  }

  void markAsViewed(BuildContext context) {
    _markUnviewedNotificationsViewed(context);
  }

  void _initializeSocket() {
    socket =
        IO.io('https://c3b8-102-90-82-178.ngrok-free.app', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();

    socket.on('notificationCreated', (data) {
      _numberOfNewNotifications += 1;
      _notificationList.insert(0, data);
      notifyListeners();
    });
  }

  Future<void> getNotifications(BuildContext context) async {
    final authManager = Provider.of<AuthProvider>(context, listen: false);
    final userData = authManager.userData;
    if (userData == null) return;

    final String token = userData['token'];
    final String userId = userData['_id'];
    final String role = userData['role'];

    final Map<String, dynamic> data = {'userId': userId, "role": role};
    final String requestBody = jsonEncode(data);

    const String url =
        'https://c3b8-102-90-82-178.ngrok-free.app/api/notifications/user';

    final http.Response response = await http.post(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      _notificationList = jsonDecode(response.body);
      print('notification list');
      print(_notificationList);
      _isLoading = false;
    } else {
      print('Error fetching notifications');
      _isLoading = false;
    }

    notifyListeners();
  }

  Future<void> _markUnviewedNotificationsViewed(BuildContext context) async {
    final authManager = Provider.of<AuthProvider>(context, listen: false);
    final userData = authManager.userData;

    if (userData == null) return;

    final String token = userData['token'];
    final String userId = userData['_id'];

    final Map<String, dynamic> data = {'userId': userId};
    final String requestBody = jsonEncode(data);

    const String url =
        'https://c3b8-102-90-82-178.ngrok-free.app/api/notifications/markAsViewed';

    final http.Response response = await http.post(
      Uri.parse(url),
      headers: {
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

  Future<void> _fetchUnviewedNotificationsCount(BuildContext context) async {
    final authManager = Provider.of<AuthProvider>(context, listen: false);
    final userData = authManager.userData;

    if (userData == null) return;

    final String token = userData['token'];
    final String userId = userData['_id'];

    final Map<String, dynamic> data = {'userId': userId};
    final String requestBody = jsonEncode(data);

    const String url =
        'https://c3b8-102-90-82-178.ngrok-free.app/api/notifications/unviewedCount';

    final http.Response response = await http.post(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      _numberOfNewNotifications = jsonDecode(response.body)['count'];
      notifyListeners();
    } else {
      print('Error fetching notification count');
    }
  }
}
