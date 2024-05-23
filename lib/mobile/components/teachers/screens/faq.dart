import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studify/mobile/widgets/custom_text.dart';
import 'package:studify/mobile/widgets/customizable_card.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'FAQ',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 5.0,
          ),
          child: Column(
            children: [
              CustomizableCard(
                expandedContent: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 18.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.circular(10)),
                    child: const CustomText(
                      'FAQ Simply means Frequently Asked Questions.',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                isTextLeft: true,
                padding: 15,
                padding2: 20,
                isStyleTwo: true,
                isGradient2: false,
                leftText: 'What is FAQ',
                leftTextStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                rightIcon1: Icons.keyboard_arrow_down_outlined,
                rightIconColor1: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomizableCard(
                expandedContent: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 18.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.circular(10)),
                    child: const CustomText(
                      'Tracking School records, marking attendance and a lot more administrative processes',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                isTextLeft: true,
                padding: 15,
                padding2: 20,
                isStyleTwo: true,
                isGradient2: false,
                leftText: 'What is this app used for',
                leftTextStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                rightIcon1: Icons.keyboard_arrow_down_outlined,
                rightIconColor1: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomizableCard(
                expandedContent: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 18.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.circular(10)),
                    child: const CustomText(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci voluptatum nemo repellendus aut assumenda quia hic consequatur ratione nulla eligendi.',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                isTextLeft: true,
                padding: 15,
                padding2: 20,
                isStyleTwo: true,
                isGradient2: false,
                leftText: 'How do I pay a fee online',
                leftTextStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                rightIcon1: Icons.keyboard_arrow_down_outlined,
                rightIconColor1: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomizableCard(
                expandedContent: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 18.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.circular(10)),
                    child: const CustomText(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci voluptatum nemo repellendus aut assumenda quia hic consequatur ratione nulla eligendi.',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                isTextLeft: true,
                padding: 15,
                padding2: 20,
                isStyleTwo: true,
                isGradient2: false,
                leftText: 'How can I check my attendance records',
                leftTextStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                rightIcon1: Icons.keyboard_arrow_down_outlined,
                rightIconColor1: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
