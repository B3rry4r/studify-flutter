import 'package:flutter/material.dart';
import 'package:studify/mobile/Screens/splash_screen.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Studify',
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: const SplashScreen(),
    );
  }
}
