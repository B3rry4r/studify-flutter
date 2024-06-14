import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/desktop/main_desktop.dart';
import 'package:studify/mobile/main_mobile.dart';
import 'package:window_manager/window_manager.dart';
import 'package:platform_detector/platform_detector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set window constraints for desktop platforms (Windows, macOS, Linux)
  if (!isWeb() && isDesktop()) {
    await windowManager.ensureInitialized();
    windowManager.setMinimumSize(const Size(1200, 800));
    runApp(
      ChangeNotifierProvider(
        create: (context) => AppViewModel(),
        child: const MyApp(),
      ),
    );
  } else {
    runApp(
      ChangeNotifierProvider(
        create: (context) => AppViewModel(),
        child: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopScreen();
  }
}
