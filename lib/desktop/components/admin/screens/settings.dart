import 'package:flutter/material.dart';
import 'package:studify/desktop/widgets/toggler.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class SettingsDesktopScreen extends StatefulWidget {
  const SettingsDesktopScreen({super.key});

  @override
  State<SettingsDesktopScreen> createState() => _SettingsDesktopScreenState();
}

class _SettingsDesktopScreenState extends State<SettingsDesktopScreen> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const CustomText(
                  'Allow Notifications',
                  fontSize: 13,
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                const Toggler(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const CustomText(
                  'Camera Permissions',
                  fontSize: 13,
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                const Toggler(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const CustomText(
                  'Allow Location',
                  fontSize: 13,
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                const Toggler(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const CustomText(
                  'Dark Mode',
                  fontSize: 13,
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                const Toggler(),
              ],
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
