import 'package:flutter/material.dart';

class AdminDesktopScreenNotifier with ChangeNotifier {
  int _currentPage = 0;
  // bool _isNotificationContainerOpen = false;

  // Getters
  int get currentPage => _currentPage;
  // bool get isNotificationContainerOpen => _isNotificationContainerOpen;

  // Setters with notifyListeners to update the UI
  void setCurrentPage(int page) {
    _currentPage = page;
    notifyListeners();
  }

  void resetData() {
    _currentPage = 0;
    notifyListeners();
  }
}
