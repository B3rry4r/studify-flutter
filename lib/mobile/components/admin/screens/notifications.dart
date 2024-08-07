import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/desktop/components/admin/utils/notification_model.dart';

class AdminNotificationScreen extends StatefulWidget {
  const AdminNotificationScreen({super.key});

  @override
  State<AdminNotificationScreen> createState() =>
      _AdminNotificationScreenState();
}

class _AdminNotificationScreenState extends State<AdminNotificationScreen> {
  Map<String, dynamic> userData = {};

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

  @override
  Widget build(BuildContext context) {
    var notificationViewModel = Provider.of<AppViewModel>(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Notifications',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Consumer<NotificationNotifier>(
        builder: (context, notificationsNotifier, child) {
          if (notificationsNotifier.isLoading) {
            return Container(
              width: double.infinity,
              height: screenHeight - 30,
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(40),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          final notificationList = notificationsNotifier.notificationList;

          return SingleChildScrollView(
            child: Column(
              children: notificationList.reversed.map<Widget>((notification) {
                DateTime dateTime = DateTime.parse(notification['updatedAt']);
                String formattedTimeDifference = getTimeDifference(dateTime);

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CustomizableCard(
                        leftIconPath: 'assets/images/profile2.svg',
                        // isGradient: true,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 243, 243)
                              .withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        centerText1: 'Admin',
                        centerText2: notification['title'],
                        centerText3: notification['message'],
                        centerTextStyle3: const TextStyle(
                          fontSize: 11,
                          overflow: TextOverflow.ellipsis,
                        ),
                        isOverflowingText: true,
                        centerTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        centerTextStyle2: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        rightText1: formattedTimeDifference,
                        rightTextStyle1: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        isRight: true,
                        leftIconBackgroundColor: Colors.blueAccent,
                        leftIconSize: 50.0,
                        padding3: 18,
                        padding: screenWidth < 380 ? 15 : 20,
                      ),
                      // const SizedBox(
                      //   height: 5,
                      // ),
                    ],
                  ),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}


                    // Container(
                    //   padding: const EdgeInsets.all(10),
                    //   width: double.infinity,
                    //   color: Colors.grey.shade300,
                    //   child: const CustomText(
                    //     'Today',
                    //     fontSize: 14,
                    //     fontWeight: FontWeight.w400,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),


// CustomizableCard(
//                       passedFunction: () {
//                         notificationViewModel
//                             .viewSingleNotification(notification);
//                         setState(() {
//                           userData = Map<String, dynamic>.from(notification);
//                         });
//                       },
//                       leftIconBackgroundColor: Colors.black,
//                       isGradient: false,
//                       circularContentDecoration: const BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       leftIconPath: 'assets/images/profile.svg',
//                       isFilterLeftIcon: true,
//                       centerText1: 'Admin',
//                       centerText2: notification['title'],
//                       centerText3: notification['message'],
//                       centerTextStyle1: const TextStyle(
//                           fontSize: 13, fontWeight: FontWeight.w700),
//                       centerTextStyle2: const TextStyle(
//                         fontSize: 11,
//                         fontWeight: FontWeight.w500,
//                         fontStyle: FontStyle.italic,
//                       ),
//                       centerTextStyle3: const TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w500,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       isOverflowingText: true,
//                       rightText1: formattedTimeDifference,
//                       rightTextStyle1: const TextStyle(
//                         fontSize: 10,
//                         fontStyle: FontStyle.italic,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),