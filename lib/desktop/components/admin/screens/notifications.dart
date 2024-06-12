import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/single_notification.dart';

class NotificationsAdminScreen extends StatefulWidget {
  const NotificationsAdminScreen({super.key});

  @override
  State<NotificationsAdminScreen> createState() =>
      _NotificationsAdminScreenState();
}

class _NotificationsAdminScreenState extends State<NotificationsAdminScreen> {
  String _currentView = 'default';

  void _viewSingleNotification() {
    setState(() {
      _currentView = 'singleNotification';
    });
  }

  void _goBack() {
    setState(() {
      _currentView = 'default';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(40),
      child: _buildCurrentView(),
    );
  }

  // This function builds the current view based on the state
  Widget _buildCurrentView() {
    switch (_currentView) {
      case 'teacherProfiles':
        return SingleNotificationAdminScreen(onBack: _goBack);
      default:
        return _buildDefaultView();
    }
  }

  // Default view with the CustomizableCards
  Widget _buildDefaultView() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
