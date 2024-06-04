import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileAdminDesktopScreen extends StatelessWidget {
  const ProfileAdminDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
          width: double.infinity,
          // height: ,
          color: Colors.grey.shade100,
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          width: double.infinity,
                          height: 150,
                          'assets/images/signin.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
