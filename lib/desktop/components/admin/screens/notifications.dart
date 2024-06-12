import 'package:flutter/material.dart';
import 'package:studify/desktop/components/admin/screens/single_notification.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

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
      case 'singleNotification':
        return SingleNotificationAdminScreen(onBack: _goBack);
      default:
        return _buildDefaultView();
    }
  }

  // Default view with the CustomizableCards
  Widget _buildDefaultView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: _viewSingleNotification,
            child: CustomizableCard(
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
              centerTextStyle1:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
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
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: _viewSingleNotification,
            child: CustomizableCard(
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
              centerTextStyle1:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
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
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: _viewSingleNotification,
            child: CustomizableCard(
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
              centerTextStyle1:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
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
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: _viewSingleNotification,
            child: CustomizableCard(
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
              centerTextStyle1:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
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
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: _viewSingleNotification,
            child: CustomizableCard(
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
              centerTextStyle1:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
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
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: _viewSingleNotification,
            child: CustomizableCard(
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
              centerTextStyle1:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
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
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: _viewSingleNotification,
            child: CustomizableCard(
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
              centerTextStyle1:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
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
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: _viewSingleNotification,
            child: CustomizableCard(
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
              centerTextStyle1:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
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
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
