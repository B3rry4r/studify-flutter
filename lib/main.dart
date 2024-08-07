import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/admin_screen_notifier.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/desktop/components/admin/utils/cbt_notifier.dart';
import 'package:studify/desktop/components/admin/utils/management_notifier.dart';
import 'package:studify/desktop/components/admin/utils/notification_model.dart';
import 'package:studify/desktop/components/admin/utils/profile_notifier.dart';
import 'package:studify/desktop/main_desktop.dart';
import 'package:studify/mobile/components/admin/utils/mobilenotifier.dart';
import 'package:studify/mobile/main_mobile.dart';
import 'package:window_manager/window_manager.dart';
import 'package:platform_detector/platform_detector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!isWeb() && isDesktop()) {
    await windowManager.ensureInitialized();
    windowManager.setMinimumSize(const Size(1200, 800));
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => ManagementNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => NotificationNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => AdminDesktopScreenNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => CBTNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => MobileHomeNotifier(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (isWeb() || isDesktop()) {
      return const MobileScreen();
    } else {
      return const MobileScreen();
    }
  }
}
