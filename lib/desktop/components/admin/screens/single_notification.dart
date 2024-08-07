import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class SingleNotificationAdminScreen extends StatelessWidget {
  final Map notificationData;
  SingleNotificationAdminScreen({
    super.key,
    this.notificationData = const {},
  });

  @override
  Widget build(BuildContext context) {
    var notificationViewModel =
        Provider.of<AppViewModel>(context, listen: false);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                  onPressed: notificationViewModel.viewDefaultNotification,
                ),
                const SizedBox(
                  width: 20,
                ),
                const CustomText(
                  'New Notification',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const CustomText(
                  'Admin',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  notificationData['title'],
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  child: Divider(
                    color: Colors.grey.shade300,
                  ),
                ),
                CustomText(
                  notificationData['message'],
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
