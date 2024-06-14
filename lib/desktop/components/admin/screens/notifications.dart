import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/screens/single_notification.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class NotificationsAdminScreen extends StatelessWidget {
  const NotificationsAdminScreen({super.key});

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
              child: InkWell(
                child: ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.white,
                    child: const Icon(
                      Icons.messenger_sharp,
                      color: Colors.blue,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSingleNotificationView() {
    return const SingleNotificationAdminScreen();
  }
}
