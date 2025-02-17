import 'package:flutter/material.dart';
import 'package:studify/desktop/screens/splash_screen_desktop.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Studify',
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: const SplashScreenDesktop(),
    );
  }
}
