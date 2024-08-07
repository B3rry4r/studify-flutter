import 'package:flutter/material.dart';

class AppViewModel with ChangeNotifier {
  //initializers
  String _notificationView = 'default';
  String _updatesView = 'default';
  String _financialMGMView = 'default';
  Map _notificationData = {};
  // String? _selectedId;

  //getters
  String get notificationView => _notificationView;
  String get updateView => _updatesView;
  String get financialMGMView => _financialMGMView;
  Map get notificationData => _notificationData;

  // String? get selectedId => _selectedId;

  //Method for financial mgm state management

  void resetData() {
    _notificationView = 'default';
    _notificationData = {};
    _financialMGMView = 'default';
    _updatesView = 'default';
  }

  void viewDefaultersAndPendingPayments() {
    _financialMGMView = 'defaultersAndPendingPayments';
    notifyListeners();
  }

  void viewPayersReciepts() {
    _financialMGMView = 'payersReciepts';
    notifyListeners();
  }

  void viewAddNewComponent() {
    _financialMGMView = 'addNewComponent';
    notifyListeners();
  }

  void viewAllComponents() {
    _financialMGMView = 'allComponents';
    notifyListeners();
  }

  void viewPayersList() {
    _financialMGMView = 'payersList';
    notifyListeners();
  }

  void viewDefaultFinancialMGM() {
    _financialMGMView = 'default';
    notifyListeners();
  }

  //method for notifications state management
  void viewSingleNotification(Map data) {
    _notificationView = 'singleNotification';
    _notificationData = data;
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
