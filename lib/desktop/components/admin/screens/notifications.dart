import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/screens/single_notification.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/desktop/components/admin/utils/notification_model.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class NotificationsAdminScreen extends StatefulWidget {
  const NotificationsAdminScreen({super.key});

  @override
  State<NotificationsAdminScreen> createState() =>
      _NotificationsAdminScreenState();
}

class _NotificationsAdminScreenState extends State<NotificationsAdminScreen> {
  Map<String, dynamic> userData = {};

  @override
  Widget build(BuildContext context) {
    var notificationViewModel = Provider.of<AppViewModel>(context);

    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(40),
      child: notificationViewModel.notificationView == 'default'
          ? _buildDefaultView(context)
          : _buildSingleNotificationView(Map<String, dynamic>.from(
              notificationViewModel.notificationData)),
    );
  }

  bool _isMessageBoxOpen = false;

  void _toggleMessageBox() {
    setState(() {
      _isMessageBoxOpen = !_isMessageBoxOpen;
    });
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

  Widget _buildDefaultView(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    var notificationViewModel =
        Provider.of<AppViewModel>(context, listen: false);

    return Consumer<NotificationNotifier>(
      builder: (context, notificationsNotifier, child) {
        if (notificationsNotifier.isLoading) {
          return Container(
            width: double.infinity,
            height: screenHeight - 60,
            color: Colors.grey.shade100,
            padding: const EdgeInsets.all(40),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        final notificationList = notificationsNotifier.notificationList;

        return Stack(
          children: [
            Positioned.fill(
              top: 0,
              child: SingleChildScrollView(
                child: Column(
                  children:
                      notificationList.reversed.map<Widget>((notification) {
                    DateTime dateTime =
                        DateTime.parse(notification['updatedAt']);
                    String formattedTimeDifference =
                        getTimeDifference(dateTime);

                    return Column(
                      children: [
                        CustomizableCard(
                          passedFunction: () {
                            notificationViewModel
                                .viewSingleNotification(notification);
                            setState(() {
                              userData =
                                  Map<String, dynamic>.from(notification);
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
                          height: 10,
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
            Positioned(
              right: 15,
              bottom: 15,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: _toggleMessageBox,
                  child: ClipOval(
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                            const Color(0xFF0000FF).withOpacity(0.7), // Blue
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: ClipOval(
                        child: Container(
                          width: 60,
                          height: 60,
                          color: Colors.white,
                          child: Icon(
                            !_isMessageBoxOpen
                                ? Icons.messenger_sharp
                                : Icons.close_rounded,
                            color:
                                !_isMessageBoxOpen ? Colors.blue : Colors.red,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            _isMessageBoxOpen
                ? Positioned(
                    right: 100,
                    bottom: 10,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFFF00FF).withOpacity(0.7), // Magenta
                            const Color(0xFF0000FF).withOpacity(0.7), // Blue
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Container(
                        width: 350,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: TextField(
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Write New Message',
                                      hintStyle: const TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        borderSide: BorderSide(
                                          color: Colors.white.withOpacity(0),
                                          width: 0.0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        borderSide: BorderSide(
                                          color: Colors.white.withOpacity(0),
                                          width: 0.0,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        borderSide: BorderSide(
                                          color: Colors.white.withOpacity(0),
                                          width: 0.0,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFFFF00FF)
                                        .withOpacity(0.7), // Magenta
                                    const Color(0xFF0000FF)
                                        .withOpacity(0.7), // Blue
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Center(
                                      child: Icon(
                                        Icons.send,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Positioned(
                    left: -100,
                    child: Container(),
                  ),
          ],
        );
      },
    );
  }

  Widget _buildSingleNotificationView(Map<String, dynamic> data) {
    return SingleNotificationAdminScreen(
      notificationData: data,
    );
  }
}
