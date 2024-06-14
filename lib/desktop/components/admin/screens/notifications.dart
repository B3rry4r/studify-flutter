import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/screens/single_notification.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/mobile/widgets/custom_text_field.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class NotificationsAdminScreen extends StatefulWidget {
  const NotificationsAdminScreen({super.key});

  @override
  State<NotificationsAdminScreen> createState() =>
      _NotificationsAdminScreenState();
}

class _NotificationsAdminScreenState extends State<NotificationsAdminScreen> {
  @override
  Widget build(BuildContext context) {
    var notificationViewModel = Provider.of<AppViewModel>(context);

    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(40),
      child: notificationViewModel.notificationView == 'default'
          ? _buildDefaultView(context)
          : _buildSingleNotificationView(),
    );
  }

  bool _isMessageBoxOpen = false;

  void _toggleMessageBox() {
    setState(() {
      _isMessageBoxOpen = !_isMessageBoxOpen;
    });
  }

  Widget _buildDefaultView(BuildContext context) {
    var notificationViewModel =
        Provider.of<AppViewModel>(context, listen: false);

    return Stack(
      children: [
        Positioned.fill(
          top: 0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomizableCard(
                  passedFunction: notificationViewModel.viewSingleNotification,
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
                  centerText2: 'Ada George Branch',
                  centerText3:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
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
                  rightText1: '30 Mins Ago',
                  rightTextStyle1: const TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  passedFunction: notificationViewModel.viewSingleNotification,
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
                  centerText2: 'Ada George Branch',
                  centerText3:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
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
                  rightText1: '30 Mins Ago',
                  rightTextStyle1: const TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  passedFunction: notificationViewModel.viewSingleNotification,
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
                  centerText2: 'Ada George Branch',
                  centerText3:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
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
                  rightText1: '30 Mins Ago',
                  rightTextStyle1: const TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  passedFunction: notificationViewModel.viewSingleNotification,
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
                  centerText2: 'Ada George Branch',
                  centerText3:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
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
                  rightText1: '30 Mins Ago',
                  rightTextStyle1: const TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  passedFunction: notificationViewModel.viewSingleNotification,
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
                  centerText2: 'Ada George Branch',
                  centerText3:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
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
                  rightText1: '30 Mins Ago',
                  rightTextStyle1: const TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  passedFunction: notificationViewModel.viewSingleNotification,
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
                  centerText2: 'Ada George Branch',
                  centerText3:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
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
                  rightText1: '30 Mins Ago',
                  rightTextStyle1: const TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  passedFunction: notificationViewModel.viewSingleNotification,
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
                  centerText2: 'Ada George Branch',
                  centerText3:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
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
                  rightText1: '30 Mins Ago',
                  rightTextStyle1: const TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizableCard(
                  passedFunction: notificationViewModel.viewSingleNotification,
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
                  centerText2: 'Ada George Branch',
                  centerText3:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
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
                  rightText1: '30 Mins Ago',
                  rightTextStyle1: const TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
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
                        color: !_isMessageBoxOpen ? Colors.blue : Colors.red,
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
  }

  Widget _buildSingleNotificationView() {
    return const SingleNotificationAdminScreen();
  }
}
