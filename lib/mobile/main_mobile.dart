import 'package:flutter/material.dart';
import 'package:studify/mobile/Screens/splash_screen.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studify',
      theme: ThemeData.light(),
      home: const SplashScreen(),
    );
  }
}
