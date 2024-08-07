import 'package:flutter/material.dart';
import 'package:studify/common/services/auth_service.dart';

class ProfileNotifier with ChangeNotifier {
  final AuthService _authService = AuthService();
  bool _isLoading = true;
  late String fName;
  late String email;
  late String number;
  late String role;

  bool get isLoading => _isLoading;
  String get firstName => fName;
  String get userEmail => email;
  String get userNumber => number;
  String get userRole => role;

  ProfileNotifier() {
    _loadProfileData();
  }

  void resetData() {
    _isLoading = true;
    fName = '';
    email = '';
    number = '';
    role = '';
  }

  Future<void> _loadProfileData() async {
    try {
      final Map<String, dynamic>? userData =
          await _authService.getUserDataFromSharedPreferences();
      fName = userData?['name'];
      email = userData?['email'];
      role = userData?['role'];
      number = userData?['number'] ?? 'No Mobile Number';
    } catch (e) {
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
