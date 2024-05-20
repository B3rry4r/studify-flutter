import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        ' Updates',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      CustomText(
                        'See All',
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
