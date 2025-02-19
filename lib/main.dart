import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/admin_screen_notifier.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/desktop/components/admin/utils/auth_notifier.dart';
import 'package:studify/desktop/components/admin/utils/cbt_notifier.dart';
import 'package:studify/desktop/components/admin/utils/management_notifier.dart';
import 'package:studify/desktop/components/admin/utils/notification_model.dart';
import 'package:studify/desktop/components/admin/utils/profile_notifier.dart';
import 'package:studify/desktop/main_desktop.dart';
import 'package:studify/desktop/screens/sign_in.dart';
import 'package:studify/mobile/components/admin/utils/mobilenotifier.dart';
import 'package:studify/mobile/main_mobile.dart';
import 'package:window_manager/window_manager.dart';
import 'package:platform_detector/platform_detector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final authManager = AuthProvider();
  await authManager.loadAuthState();

  if (!isWeb() && isDesktop()) {
    await windowManager.ensureInitialized();
    windowManager.setMinimumSize(const Size(1200, 800));
  }

  runApp(MyApp(
    authManager: authManager,
  ));
}

class MyApp extends StatelessWidget {
  final AuthProvider authManager;
  const MyApp({super.key, required this.authManager});

  // @override
  // Widget build(BuildContext context) {
  //   if (isWeb() || isDesktop()) {
  //     return const DesktopScreen();
  //   } else {
  //     return const MobileScreen();
  //   }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
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
      child: Consumer<AuthProvider>(
        builder: (context, auth, _) {
          return MaterialApp(
            home: auth.isSignedIn ? DesktopScreen() : SignInScreenDesktop(),
          );
        },
      ),
    );
  }
}
