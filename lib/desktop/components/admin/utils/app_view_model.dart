import 'package:flutter/material.dart';

class AppViewModel with ChangeNotifier {
  //initializers
  String _notificationView = 'default';
  String _updatesView = 'default';

  //getters
  String get notificationView => _notificationView;
  String get updateView => _updatesView;

  //method for notifications state management
  void viewSingleNotification() {
    _notificationView = 'singleNotification';
    notifyListeners();
  }

  void viewDefaultNotification() {
    _notificationView = 'default';
    notifyListeners();
  }

  //Method for desktop Update state management
  void viewSingleUpdate() {
    _updatesView = 'singleUpdate';
    notifyListeners();
  }

  void viewDefaultUpdate() {
    _updatesView = 'default';
    notifyListeners();
  }
}
