import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class PayersReciptDesktopScreen extends StatelessWidget {
  const PayersReciptDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appViewModel = Provider.of<AppViewModel>(context, listen: false);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                  onPressed: appViewModel.viewPayersList,
                ),
                const SizedBox(
                  width: 20,
                ),
                const CustomText(
                  'Payment Reciept',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFF00FF), // Magenta
                        Color(0xFF0000FF), // Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CustomText(
                              'Owner ID',
                              fontSize: 13,
                            ),
                            Flexible(
                              child: Container(),
                            ),
                            const CustomText(
                              'Micheal James',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CustomText(
                              'Payment ID',
                              fontSize: 13,
                            ),
                            Flexible(
                              child: Container(),
                            ),
                            const CustomText(
                              '3h4df354hfg0a9ea34',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CustomText(
                              'Status',
                              fontSize: 13,
                            ),
                            Flexible(
                              child: Container(),
                            ),
                            const CustomText(
                              'Success',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CustomText(
                              'Description',
                              fontSize: 13,
                            ),
                            Flexible(
                              child: Container(),
                            ),
                            const CustomText(
                              'School Fees',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CustomText(
                              'Time',
                              fontSize: 13,
                            ),
                            Flexible(
                              child: Container(),
                            ),
                            const CustomText(
                              '12:22:36',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CustomText(
                              'Date',
                              fontSize: 13,
                            ),
                            Flexible(
                              child: Container(),
                            ),
                            const CustomText(
                              '25-07-2024',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const CustomText(
                              'Amount',
                              fontSize: 13,
                            ),
                            Flexible(
                              child: Container(),
                            ),
                            const CustomText(
                              '320,000',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: const Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: 150,
                          padding: const EdgeInsets.all(1),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFF00FF), // Magenta
                                Color(0xFF0000FF), // Blue
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(15),
                            color: Colors.white,
                            child: const Center(
                              child: CustomText(
                                'Get PDF Receipt',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -25,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFF00FF), // Magenta
                          Color(0xFF0000FF), // Blue
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(17),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/payment_G.svg',
                          width: 12,
                          height: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
