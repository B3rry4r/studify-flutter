import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/desktop/components/admin/utils/notification_model.dart';

class AuthProvider extends ChangeNotifier {
  bool _isSignedIn = false;
  Map<String, dynamic>? _userData;

  bool get isSignedIn => _isSignedIn;
  Map<String, dynamic>? get userData => _userData;

  /// Load auth state from shared preferences
  Future<void> loadAuthState() async {
    final prefs = await SharedPreferences.getInstance();
    String? userJson = prefs.getString('userData');

    if (userJson != null) {
      _userData = jsonDecode(userJson);
      _isSignedIn = true;
    } else {
      _isSignedIn = false;
    }
    notifyListeners();
  }

  /// Login function - Saves user data and updates dependent providers
  Future<void> login(
      Map<String, dynamic> userJson, BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userData', jsonEncode(userJson));
    print(userJson);

    _userData = userJson;
    _isSignedIn = true;
    notifyListeners();

    // 🔄 Reinitialize all providers that depend on authentication
    if (context.mounted) {
      Provider.of<NotificationNotifier>(context, listen: false)
          .initialize(context);
      // Provider.of<SomeOtherNotifier>(context, listen: false).fetchData(context);
    }
  }

  /// Logout function - Clears user data and resets all providers
  Future<void> logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    _isSignedIn = false;
    _userData = null;
    notifyListeners();

    // 🔄 Reset all providers
    if (context.mounted) {
      Provider.of<NotificationNotifier>(context, listen: false).resetData();
      // Provider.of<SomeOtherNotifier>(context, listen: false).resetData();
    }
  }
}
