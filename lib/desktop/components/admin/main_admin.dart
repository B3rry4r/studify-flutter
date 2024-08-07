import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restart_app/restart_app.dart';
import 'package:intl/intl.dart';
import 'package:studify/desktop/components/admin/screens/financial_management.dart';
import 'package:studify/desktop/components/admin/screens/settings.dart';
import 'package:studify/desktop/components/admin/screens/updates.dart';
import 'package:studify/desktop/components/admin/utils/admin_screen_notifier.dart';
import 'package:studify/desktop/components/admin/utils/management_notifier.dart';
import 'package:studify/desktop/components/admin/utils/notification_model.dart';
import 'package:studify/desktop/components/admin/utils/profile_notifier.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studify/desktop/components/admin/screens/cbt_management.dart';
import 'package:studify/desktop/components/admin/screens/dashboard.dart';
import 'package:studify/desktop/components/admin/screens/management.dart';
import 'package:studify/desktop/components/admin/screens/notifications.dart';
import 'package:studify/desktop/components/admin/screens/profile.dart';
import 'package:studify/desktop/screens/sign_in.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';

//NEW PROBLEM RESUMED STATES WHEN SIGNING IN TO NEW USER OLD DATA STILL RETAINS

class AdminDesktopScreen extends StatefulWidget {
  const AdminDesktopScreen({super.key});

  @override
  State<AdminDesktopScreen> createState() => _AdminDesktopScreenState();
}

class _AdminDesktopScreenState extends State<AdminDesktopScreen> {
  // int _currentPage = 0;
  bool _isNotificationContainerOpen = false;

  // getter

  List _notificationsList = [];

  final List<Widget> _pages = const [
    DashboardAdminScreen(),
    ProfileAdminDesktopScreen(),
    ManagementAdminScreen(),
    CBTAdminManagementScreen(),
    NotificationsAdminScreen(),
    UpdatesAdminDesktopScreen(),
    FinancialManagementDesktopAdminScreen(),
    SettingsDesktopScreen(),
  ];

  final List<String> _pageTitles = [
    'Dashboard',
    'Profile',
    'Management',
    'CBT-Management',
    'Notifications',
    'Updates',
    'Financial Management',
    'Settings',
  ];

  void _updatePage(int index) {
    var adminViewModel =
        Provider.of<AdminDesktopScreenNotifier>(context, listen: false);
    adminViewModel.setCurrentPage(index);
    // setState(() {
    //   // _currentPage = adminViewModel.currentPage;
    // });
  }

  void _logOut() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('userSignedIn', false);
      await prefs.remove('userData');

      // Navigator.of(context).pushAndRemoveUntil(
      //   MaterialPageRoute(
      //     builder: (context) => const SignInScreenDesktop(),
      //   ),
      //   (Route<dynamic> route) => false,
      // );

      // Provide the correct webOrigin if necessary
      Restart.restartApp();
    } catch (error) {
      print('Logout error: $error');
    }
  }

  void _displayNotifications() async {
    var notificationViewModel =
        Provider.of<NotificationNotifier>(context, listen: false);

    notificationViewModel.toggleNotificationContainer();
    // List notifications = await notificationViewModel.getNotifications();

    // setState(() {
    //   _notificationsList = notifications;
    //   _isNotificationContainerOpen = !_isNotificationContainerOpen;
    // });
    // print(_notificationsList);
  }

  // void _viewSingleNotification() {
  //   var adminViewModel = Provider.of<AdminDesktopScreenNotifier>(context);

  //   var notificationViewModel =
  //       Provider.of<AppViewModel>(context, listen: false);
  //   notificationViewModel.viewSingleNotification();
  //   adminViewModel.setCurrentPage(4);
  //   setState(() {
  //     _isNotificationContainerOpen = !_isNotificationContainerOpen;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var adminViewModel = Provider.of<AdminDesktopScreenNotifier>(context);

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

    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            top: 60,
            left: 219,
            child: SafeArea(
              child: IndexedStack(
                index: adminViewModel.currentPage,
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
                      _pageTitles[adminViewModel.currentPage],
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
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
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
                            Visibility(
                              visible: isNewNnotification,
                              child: Positioned(
                                top: 0,
                                right: -3,
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: Visibility(
              visible: notificationViewModel.isNotificationContainerOpen,
              child: Material(
                elevation: 2.0,
                child: Container(
                  width: 350,
                  height: 400,
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFF00FF), // Magenta
                        Color(0xFF0000FF), // Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(5),
                    child: const NotificationList(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Material(
              child: Container(
                height: screenHeight,
                width: 220,
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/studify_text_G.svg',
                      height: 27, // Adjust the size as needed
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      child: Divider(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    // LeftSide Nav Bar
                    const SizedBox(
                      height: 2,
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
                    _buildNavItem(
                      iconPath: 'assets/images/Updates.svg',
                      title: 'Updates',
                      index: 5,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildNavItem(
                      iconPath: 'assets/images/waller_G.svg',
                      title: 'Financial Management',
                      index: 6,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildNavItem(
                      iconPath: 'assets/images/settings_G.svg',
                      title: 'Settings',
                      index: 7,
                    ),
                    const SizedBox(
                        // height: 10,
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
    var adminViewModel = Provider.of<AdminDesktopScreenNotifier>(context);
    bool isActive = adminViewModel.currentPage == index;
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

String getTimeDifference(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inMinutes < 1) {
    return 'Just now';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} mins ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} hours ago';
  } else if (difference.inDays == 1) {
    return 'Yesterday';
  } else if (difference.inDays < 7) {
    return '${difference.inDays} days ago';
  } else {
    return DateFormat('MMM d, y').format(dateTime);
  }
}

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  Map<String, dynamic> userData = {};

  @override
  Widget build(BuildContext context) {
    var notificationViewModel =
        Provider.of<AppViewModel>(context, listen: false);

    return Consumer<NotificationNotifier>(
      builder: (context, notificationNotifier, child) {
        if (notificationNotifier.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (notificationNotifier.notificationList.isEmpty) {
          return const Center(
            child: Text('No notifications'),
          );
        } else {
          return ListView.builder(
            itemCount: notificationNotifier.notificationList.length,
            itemBuilder: (context, index) {
              var notification = notificationNotifier.notificationList.reversed
                  .toList()[index];
              DateTime dateTime = DateTime.parse(notification['updatedAt']);
              String formattedTimeDifference = getTimeDifference(dateTime);
              return Column(
                children: [
                  CustomizableCard(
                    passedFunction: () {
                      var adminViewModel =
                          Provider.of<AdminDesktopScreenNotifier>(
                        context,
                        listen: false,
                      );
                      notificationViewModel
                          .viewSingleNotification(notification);
                      setState(() {
                        userData = Map<String, dynamic>.from(notification);
                        adminViewModel.setCurrentPage(4);
                        notificationNotifier.toggleNotificationContainer();
                      });
                    },
                    leftIconBackgroundColor: Colors.black,
                    isGradient: false,
                    circularContentDecoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    leftIconPath: 'assets/images/profile.svg',
                    isFilterLeftIcon: true,
                    leftIconSize: 40,
                    padding3: 10,
                    centerText1: 'Admin',
                    centerText2: notification['title'],
                    centerText3: notification['message'],
                    centerTextStyle1: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w700),
                    centerTextStyle2: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                    centerTextStyle3: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                    isOverflowingText: true,
                    rightText1: formattedTimeDifference,
                    rightTextStyle1: const TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              );
            },
          );
        }
      },
    );
  }
}
