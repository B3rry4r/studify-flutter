import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/desktop/components/admin/screens/cbt_management.dart';
import 'package:studify/desktop/components/admin/screens/dashboard.dart';
import 'package:studify/desktop/components/admin/screens/management.dart';
import 'package:studify/desktop/components/admin/screens/notifications.dart';
import 'package:studify/desktop/components/admin/screens/profile.dart';
import 'package:studify/desktop/screens/sign_in.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class AdminDesktopScreen extends StatefulWidget {
  const AdminDesktopScreen({super.key});

  @override
  State<AdminDesktopScreen> createState() => _AdminDesktopScreenState();
}

class _AdminDesktopScreenState extends State<AdminDesktopScreen> {
  int _currentPage = 0;
  bool _isNotificationContainerOpen = false;

  final List<Widget> _pages = const [
    DashboardAdminScreen(),
    ProfileAdminDesktopScreen(),
    ManagementAdminScreen(),
    CBTAdminManagementScreen(),
    NotificationsAdminScreen(),
  ];

  final List<String> _pageTitles = [
    'Dashboard',
    'Profile',
    'Management',
    'CBT-Management',
    'Notifications',
  ];

  void _updatePage(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('userSignedIn', false);
    prefs.remove('role');
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const SignInScreenDesktop(),
      ),
    );
  }

  void _displayNotifications() {
    setState(() {
      _isNotificationContainerOpen = !_isNotificationContainerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            top: 60,
            left: 219,
            child: SafeArea(
              child: IndexedStack(
                index: _currentPage,
                children: _pages,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 220,
            child: Material(
              child: Container(
                width: MediaQuery.of(context).size.width - 220,
                // height: 80,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                child: Row(
                  children: [
                    CustomText(
                      _pageTitles[_currentPage],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    GestureDetector(
                      onTap: _displayNotifications,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          padding: const EdgeInsets.all(1),
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
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: SvgPicture.asset(
                              'assets/images/notification_G.svg',
                              height: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _isNotificationContainerOpen
              ? Positioned(
                  top: 60,
                  right: 20,
                  child: Material(
                    elevation: 2.0,
                    child: Container(
                      width: 350,
                      height: 400,
                      color: Colors.white70,
                    ),
                  ),
                )
              : Positioned(
                  right: -50,
                  child: Container(),
                ),
          Positioned(
            top: 0,
            left: 0,
            child: Material(
              child: Container(
                height: screenHeight,
                width: 220,
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/studify_text_G.svg',
                      height: 27, // Adjust the size as needed
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Divider(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    // LeftSide Nav Bar
                    const SizedBox(
                      height: 10,
                    ),
                    _buildNavItem(
                      iconPath: 'assets/images/home_G.svg',
                      title: 'Dashboard',
                      index: 0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildNavItem(
                      iconPath: 'assets/images/profile_G.svg',
                      title: 'Profile',
                      index: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildNavItem(
                      iconPath: 'assets/images/management_G.svg',
                      title: 'Management',
                      index: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildNavItem(
                      iconPath: 'assets/images/CBT_G.svg',
                      title: 'CBT-Management',
                      index: 3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildNavItem(
                      iconPath: 'assets/images/notification_G.svg',
                      title: 'Notifications',
                      index: 4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //Logout
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: _logOut,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.red.shade400,
                              width: 1.4,
                            ),
                          ),
                          width: double.infinity,
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                'assets/images/logout_G.svg',
                                height: 10, // Adjust the size as needed
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const CustomText(
                                'Log Out',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String iconPath,
    required String title,
    required int index,
  }) {
    bool isActive = _currentPage == index;
    return GestureDetector(
      onTap: () => _updatePage(index),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isActive ? Colors.black : Colors.grey.shade300,
            width: 1.4,
          ),
        ),
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 10, // Adjust the size as needed
            ),
            const SizedBox(
              width: 15,
            ),
            CustomText(
              title,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: isActive ? Colors.white : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
