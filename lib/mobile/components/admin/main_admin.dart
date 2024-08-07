import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studify/mobile/components/admin/screens/admin_home.dart';
import 'package:studify/mobile/components/admin/screens/management.dart';
import 'package:studify/mobile/components/admin/screens/more.dart';
import 'package:studify/mobile/components/admin/screens/notifications.dart';
import 'package:studify/mobile/components/admin/screens/profile_screen.dart';
import 'package:studify/mobile/components/admin/screens/students_attendance_screen.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/desktop/components/admin/utils/notification_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/common/services/auth_service.dart';

class AdminMobileScreen extends StatefulWidget {
  final String? name;
  final String? role;

  const AdminMobileScreen({super.key, required this.name, required this.role});

  @override
  State<AdminMobileScreen> createState() => _AdminMobileScreenState();
}

class _AdminMobileScreenState extends State<AdminMobileScreen> {
  int _currentPage = 0;
  final AuthService _authService = AuthService();

  bool _isLoading = true;

  final List<Widget> _pages = const [
    HomeAdmins(),
    ManagementScreen(),
    StudentsAttendanceAdminScreen(),
    ProfileScreenAdmins(),
    MoreScreenAdmins(),
  ];

  void _navToNotifications() {
    var notificationViewModel =
        Provider.of<NotificationNotifier>(context, listen: false);
    notificationViewModel.markAsViewed();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AdminNotificationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    var notificationViewModel = Provider.of<NotificationNotifier>(context);

    bool isNewNnotification = false;

    if (notificationViewModel.numberOfNewNotifications != 0) {
      setState(() {
        isNewNnotification = true;
      });
    } else {
      setState(() {
        isNewNnotification = false;
      });
    }

    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Positioned.fill(
            top: 60.0, // Height of the custom AppBar
            child: SafeArea(
              child: IndexedStack(
                index: _currentPage,
                children: _pages,
              ),
            ),
          ),
          // Custom AppBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Material(
              elevation: 2.0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(18.0, 10.0, 5.0, 8.0),
                color: Colors.white,
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            widget.name.toString(),
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth < 380 ? 17 : 20,
                          ),
                          CustomText(
                            widget.role.toString(),
                            fontWeight: FontWeight.w300,
                            fontSize: screenWidth < 380 ? 12 : 15,
                          ),
                        ],
                      ),
                      // Gradient-wrapped icon
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: IconButton(
                              icon: SvgPicture.asset(
                                'assets/images/notification_G.svg',
                                height: 17,
                              ),
                              onPressed: _navToNotifications,
                            ),
                          ),
                          Visibility(
                            visible: isNewNnotification,
                            child: Positioned(
                              top: 0,
                              right: 1,
                              child: Container(
                                padding: const EdgeInsets.all(1),
                                width: 13,
                                height: 13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFFF00FF), // Magenta
                                      Color(0xFF0000FF), // Blue
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: CustomText(
                                    '${notificationViewModel.numberOfNewNotifications}',
                                    fontSize: 8,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: _currentPage,
        onTap: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentPage == 0
                ? SvgPicture.asset(
                    'assets/images/home_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    'assets/images/home.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 1
                ? SvgPicture.asset(
                    'assets/images/attendance_G.svg',
                    height: 14,
                  )
                : SvgPicture.asset(
                    'assets/images/attendance.svg',
                    height: 14,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 2
                ? SvgPicture.asset(
                    'assets/images/s_management_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    'assets/images/s_management.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 3
                ? SvgPicture.asset(
                    'assets/images/profile_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    'assets/images/profile.svg',
                    height: 17,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 4
                ? SvgPicture.asset(
                    'assets/images/more_G.svg',
                    height: 17,
                  )
                : SvgPicture.asset(
                    'assets/images/more.svg',
                    height: 17,
                  ),
            label: '',
          ),
        ],
      ),
    );
  }
}
